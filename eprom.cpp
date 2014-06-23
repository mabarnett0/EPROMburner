#include "eprom.h"
#include <util/delay.h>

uint32_t epromSize = DEFEPROMSIZE;
epromWord_t epromBuf[DEFEPROMBLKSIZE];
epromAddr_t addrCur;

void inline setDataIn() {
  MEMDLOWDDR = 0x00;
  MEMDHIGHDDR = 0x00;
  MEMDLOWPORT = 0x00;
  MEMDHIGHPORT = 0x00;
}

void inline setDataOut() {
  MEMDLOWDDR = 0xFF;
  MEMDHIGHDDR = 0xFF;
}

void epromSetAddr() {
  digitalWrite(MEMALATCH, LOW);
  shiftOut(MEMADATA, MEMACLK, MSBFIRST, addrCur.l);
  shiftOut(MEMADATA, MEMACLK, MSBFIRST, addrCur.h);
  digitalWrite(MEMALATCH, HIGH);
  
  digitalWrite(MEMA16, (addrCur.a16 ? HIGH : LOW));
  digitalWrite(MEMA17, (addrCur.a17 ? HIGH : LOW));
  digitalWrite(MEMA18, (addrCur.a18 ? HIGH : LOW));
  digitalWrite(MEMA19, (addrCur.a19 ? HIGH : LOW));
}

void epromRead(epromWord_t* buf, uint32_t len) {
  epromAddr_t addrEnd;
  addrEnd.addr = addrCur.addr + len;
  
  for (; addrCur.addr < addrEnd.addr; ++addrCur.addr) {
    epromSetAddr();
    _delay_us(1);
  
    buf->l = MEMDLOWPIN;
    buf->h = MEMDHIGHPIN;
    ++buf;
  }
}

uint8_t epromWrite(epromWord_t* buf, uint32_t len) {
  epromAddr_t addrEnd;
  addrEnd.addr = addrCur.addr + len;
  uint8_t verifyCount;
  uint8_t verified = 0;
  
  for (; addrCur.addr < addrEnd.addr; ++addrCur.addr) {
    verified = 0;
    verifyCount = 0;
    
    epromSetAddr();
    _delay_us(1);
    
    while (!verified) {
      setDataOut();
      MEMDLOWPORT = buf->l;
      MEMDHIGHPORT = buf->h;
      _delay_us(15); // 3
    
      MEMCHIPENPORT = (0 << MEMCHIPENVAL) | (1 << MEMOUTENVAL);
      _delay_us(50);
      MEMCHIPENPORT = (1 << MEMCHIPENVAL) | (1 << MEMOUTENVAL);
      _delay_us(15); // 3
    
      setDataIn();
      _delay_us(50); // 10
      
      MEMCHIPENPORT = (1 << MEMCHIPENVAL) | (0 << MEMOUTENVAL);
      _delay_us(5); // 1
      
      if (MEMDLOWPIN == buf->l && MEMDHIGHPIN == buf->h) { verified = 1; }
      else { ++verifyCount; }
      
      MEMCHIPENPORT = (1 << MEMCHIPENVAL) | (1 << MEMOUTENVAL);
      _delay_us(1); // 5
      
      if (verifyCount >= 25) { return 0; }
    }
    ++buf;
  }
  return 1;
}

uint8_t epromReadMult(epromWord_t* buf, uint32_t bufSize, uint8_t (*callBack)(epromAddr_t*, epromWord_t*, uint32_t)) {
  addrCur.addr = 0;
  epromAddr_t addrEnd;
  addrEnd.addr = epromSize;
  epromAddr_t tAddr;
  
  uint32_t totBlk = (epromSize / bufSize) + (epromSize % bufSize ? 1 : 0);
  uint32_t curBlk = 0;
  
  epromReadEnable();
  setDataIn();
  
  while (addrCur.addr < addrEnd.addr) {
    if (curBlk % 100 == 0) {
      Serial.print(curBlk, DEC);
      Serial.print('/');
      Serial.println(totBlk, DEC);
    }
    
    tAddr.addr = addrCur.addr;
    epromRead(buf, bufSize);
    
    if (!callBack(&tAddr, buf, bufSize)) { return 0; }
    
    //addr.addr += bufSize;
    ++curBlk;
    if (addrEnd.addr - addrCur.addr < bufSize) { bufSize = addrEnd.addr - addrCur.addr; }
  }
  
  epromReadDisable();
  return 1;
}

uint8_t epromWriteMult(epromWord_t* buf, uint32_t bufSize, uint8_t (*callBack)(epromAddr_t*, epromWord_t*, uint32_t)) {
  addrCur.addr = 0;
  epromAddr_t addrEnd;
  addrEnd.addr = epromSize;
  
  uint32_t totBlk = (epromSize / bufSize) + (epromSize % bufSize ? 1 : 0);
  uint32_t curBlk = 0;
  
  epromWriteEnable();
  
  while (addrCur.addr < addrEnd.addr) {
    if (!callBack(&addrCur, buf, bufSize)) { return 0; }
    
    if (curBlk % 100 == 0) {
      Serial.print(curBlk, DEC);
      Serial.print('/');
      Serial.println(totBlk, DEC);
    }
    
    if (!epromWrite(buf, bufSize)) { return 0; }
    
    ++curBlk;
    if (addrEnd.addr - addrCur.addr < bufSize) { bufSize = addrEnd.addr - addrCur.addr; }
  }
  return 1;
}

uint8_t verifyBlankCB(epromAddr_t* addr, epromWord_t* buf, uint32_t bufSize) {
  uint32_t i;
  for (i = 0; i < bufSize; ++i) {
    if (buf[i].l != 0xFF || buf[i].h != 0xFF) {
      addr->addr += i;
      return 0;
    }
  }
  addr->addr += i;
  return 1;
}
  
  

void epromReadEnable() {
  digitalWrite(MEMCHIPEN, LOW);
  _delay_us(1);
  digitalWrite(MEMOUTEN, LOW);
  _delay_us(1);
}

void epromReadDisable() {
  digitalWrite(MEMCHIPEN, HIGH);
  digitalWrite(MEMOUTEN, HIGH);
  _delay_us(1);
}

void epromWriteEnable() {
  digitalWrite(MEMCHIPEN, HIGH);
  digitalWrite(MEMOUTEN, HIGH);
  _delay_us(3);
}

void epromWriteDisable() {
  digitalWrite(MEMCHIPEN, LOW);
  digitalWrite(MEMOUTEN, LOW);
  _delay_us(3);
}

void printAddr(epromAddr_t addr) {
  Serial.print(addr.a20, HEX);
  Serial.print(addr.a19, HEX);
  Serial.print(addr.a18, HEX);
  Serial.print(addr.a17, HEX);
  Serial.print(addr.a16, HEX);
  Serial.print(' ');
  Serial.print(addr.h, HEX);
  Serial.print(' ');
  Serial.println(addr.l, HEX);
}

#ifndef EPROM_H
#define EPROM_H

#include <stdint.h>
#include <Arduino.h>

#define MEMALATCH        25
#define MEMACLK          26
#define MEMADATA         24
#define MEMA16           8
#define MEMA17           9
#define MEMA18           19
#define MEMA19           18

#define MEMDLOWPORT      PORTC
#define MEMDLOWPIN       PINC
#define MEMDLOWDDR       DDRC
#define MEMDHIGHPORT     PORTF
#define MEMDHIGHPIN      PINF
#define MEMDHIGHDDR      DDRF

#define MEMCHIPEN        7
#define MEMCHIPENPORT    PORTD
#define MEMCHIPENVAL     7
#define MEMOUTEN         6
#define MEMOUTENPORT     PORTD
#define MEMOUTENVAL      6

#define DEFEPROMSIZE     1048576 // 1 MB
#define DEFEPROMBLKSIZE  256

union epromAddr_t {
  uint32_t addr;
  struct {
    uint8_t l;
    uint8_t h;
    uint8_t a16 : 1;
    uint8_t a17 : 1;
    uint8_t a18 : 1;
    uint8_t a19 : 1;
    uint8_t a20 : 1;
  };
};

union epromWord_t {
  uint16_t data;
  struct {
    uint8_t l;
    uint8_t h;
  };
};

extern uint32_t epromSize;
extern epromWord_t epromBuf[DEFEPROMBLKSIZE];
extern epromAddr_t addrCur;

void inline setDataIn();
void inline setDataOut();
void epromSetAddr();

void epromRead(epromWord_t* buf, uint32_t len);
uint8_t epromWrite(epromAddr_t addr, epromWord_t* buf, uint32_t len);

uint8_t epromReadMult(epromWord_t* buf, uint32_t bufSize, uint8_t (*callBack)(epromAddr_t*, epromWord_t*, uint32_t));
uint8_t epromWriteMult(epromWord_t* buf, uint32_t bufSize, uint8_t (*callBack)(epromAddr_t*, epromWord_t*, uint32_t));

void epromReadEnable();
void epromReadDisable();
void epromWriteEnable();
void epromWriteDisable();
void printAddr(epromAddr_t addr);
uint8_t verifyBlankCB(epromAddr_t* addr, epromWord_t* buf, uint32_t bufSize);


#endif

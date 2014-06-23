#include <SD.h>
#include "eprom.h"
#include <util/delay.h>

#define SDCS           20
#define SERBUFSIZE     32
enum { STATENONE, STATEMENU, STATEBACKUP, STATELOAD, NSTATES };

uint8_t serBuf[SERBUFSIZE];
uint8_t serBufi = 0;
File root;
File binFile;
uint8_t state = STATENONE;

void setup() {
  pinMode(MEMALATCH, OUTPUT);
  pinMode(MEMACLK,   OUTPUT);
  pinMode(MEMADATA,  OUTPUT);
  pinMode(MEMA16,    OUTPUT);
  pinMode(MEMA17,    OUTPUT);
  pinMode(MEMA18,    OUTPUT);
  pinMode(MEMA19,    OUTPUT);
  digitalWrite(MEMA16,    LOW);
  digitalWrite(MEMA17,    LOW);
  digitalWrite(MEMA18,    LOW);
  digitalWrite(MEMA19,    LOW);
  
  pinMode(MEMCHIPEN, OUTPUT);
  pinMode(MEMOUTEN,  OUTPUT);
  digitalWrite(MEMCHIPEN, HIGH);
  digitalWrite(MEMOUTEN,  HIGH);
  
  MEMDLOWDDR = 0x00;
  MEMDHIGHDDR = 0x00;
  MEMDLOWPORT = 0x00;
  MEMDHIGHPORT = 0x00;
  
  Serial.begin(9600);
  Serial.println("Boot");
  
  Serial.println("Init SD");
  pinMode(SDCS,  OUTPUT);

  if (SD.begin(SDCS)) { Serial.println("SD init done"); }
  else { Serial.println("SD init fail"); }
  
  printMenu();
  
  pinMode(0, OUTPUT);
  digitalWrite(0, LOW);
}

void loop() {
  if (Serial.available()) {
    uint8_t tSer = Serial.read();
    if (tSer == 0x0A || tSer == 0x0D || serBufi + 1 == SERBUFSIZE) { procSerial(); }
    else { serBuf[serBufi++] = tSer; }
  }
}

void procSerial() {
  if (state == STATEMENU) {
    switch (serBuf[0]) {
      case 'L':
        root = SD.open("/");
        printDir(root);
        root.close();
        break;
      case 'V': {
        if (!epromReadMult(epromBuf, DEFEPROMBLKSIZE, verifyBlankCB)) {
          Serial.print("Blank verify failed ");
          printAddr(addrCur);
        }
        else { Serial.println("Chip verified blank"); }
        break;
      }
      case 'R':
        Serial.println("Enter file name(max SERBUFSIZE chars):");
        //Serial.print(SERBUFSIZE, DEC);
        state = STATEBACKUP;
        break;
      case 'W':
        Serial.println("Enter file name(max SERBUFSIZE chars):");
        state = STATELOAD;
        break;
    }
    serBufi = 0;
  }
  else if (state == STATEBACKUP) {
    Serial.println("Reading to file");
    backupEprom();
    state = STATEMENU;
  }
  else if (state == STATELOAD) {
    Serial.println("Writing to EPROM");
    loadEprom();
    state = STATEMENU;
  }
  
  if (state == STATEMENU) { printMenu(); }
}

void printMenu() {
  state = STATEMENU;
  Serial.println();
  Serial.print("Block size(words): ");
  Serial.println(DEFEPROMBLKSIZE, DEC);
  Serial.print("EPROM size(words): currently ");
  Serial.println(epromSize, DEC);
  Serial.println("(R)ead to file");
  Serial.println("(W)rite from file");
  Serial.println("(V)erify blank");
  Serial.println("(L)ist SD files");
}

void printDir(File dir) {
  while (1) {
    File entry = dir.openNextFile();
    if (!entry) { break; }
    
    Serial.print(entry.name());
    if (entry.isDirectory()) { Serial.println("/"); }
    else {
      Serial.print("\t\t");
      Serial.println(entry.size(), DEC);
    }
    entry.close();
  }
}

void backupEprom() {
  uint8_t fname[serBufi + 1];
  memcpy(fname, serBuf, serBufi);
  fname[serBufi] = 0x00;
  
  if (SD.exists((char*) fname)) {
    Serial.println("File already exists");
    return;
  }
  
  binFile = SD.open((char*) fname, FILE_WRITE);
  if (!binFile) {
    Serial.println("Failed to open file");
    return;
  }
  
  if (!epromReadMult(epromBuf, DEFEPROMBLKSIZE, backupCB)) {
    Serial.println("Read failed");
    printAddr(addrCur);
  }
  
  binFile.close();
  Serial.println("File written to SD");
}

uint8_t backupCB(epromAddr_t* addr, epromWord_t* buf, uint32_t bufSize) {
  binFile.write((uint8_t*) buf, bufSize * 2);
  return 1;
}

void loadEprom() {
  uint8_t fname[serBufi + 1];
  memcpy(fname, serBuf, serBufi);
  fname[serBufi] = 0x00;
  
  if (!SD.exists((char*) fname)) {
    Serial.println("File not found");
    return;
  }
  
  binFile = SD.open((char*) fname, FILE_READ);
  if (!binFile) {
    Serial.println("Failed to open file");
    binFile.close();
    return;
  }
  
  epromWriteEnable();
  
  if (!epromWriteMult(epromBuf, DEFEPROMBLKSIZE, loadCB)) {
    Serial.println("Write failed");
    printAddr(addrCur);
  }
  else { Serial.println("File written to EPROM"); }
  
  epromWriteDisable();
  
  binFile.close();
}

uint8_t loadCB(epromAddr_t* addr, epromWord_t* buf, uint32_t bufSize) {
  if (!binFile.seek(addr->addr * 2)) {
    Serial.println("Seek failed");
    Serial.flush();
    return 0;
  }
  if (!binFile.read((uint8_t*) buf, bufSize * 2)) {
    Serial.println("Read failed");
    Serial.flush();
    return 0;
  }
  return 1;
}
  

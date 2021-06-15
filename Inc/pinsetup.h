#ifndef PINSETUP_H_
#define PINSETUP_H_

#include "30010_io.h"
#include "stm32f30x_conf.h"
#include <stdint.h>


void setPinIn(char, uint8_t);
void setPinOut(char, uint8_t);

uint16_t readPinVal(char, uint8_t);
void writePinVal(char, uint8_t, uint16_t);


void initPotADC();
uint16_t readPot(uint8_t pot1);



#endif /* PINSETUP_H_ */

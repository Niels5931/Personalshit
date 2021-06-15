#ifndef WINDOW_H_
#define WINDOW_H_

#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include "ansi.h"

typedef struct{
	uint8_t x1;
	uint8_t y1;

	uint8_t x2;
	uint8_t y2;
}window_t;

void draw_window(uint8_t x1, uint8_t y1,uint8_t x2, uint8_t y2, char* style,char* title);
void drawTitle(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2,uint8_t stylenum, char* title);
void drawEdges(uint8_t x1, uint8_t y1,uint8_t x2,uint8_t y2, uint8_t stylenum);

#endif /* WINDOW_H_ */

// =====================================================================
//
//	Exported by Cearn's excellut v1.0
//	(comments, kudos, flames to daytshen@hotmail.com)
//
// =====================================================================


#ifndef EXCELLUT_H
#define EXCELLUT_H

#include <stdint.h>
#include <stdio.h>

// === LUT SIZES ===
#define SIN_SIZE 512

// === LUT DECLARATIONS ===
extern const signed short SIN[512];

void printFix(int32_t i);

int32_t expand (int32_t i);

int32_t roundcon (uint32_t i);

int32_t calcSin(int32_t i);

int32_t calcCos(int32_t i);

typedef struct {
	int32_t x,y;
}vector_t;

void initVector(vector_t *v, int32_t x, int32_t y);

void rotateVector(vector_t *v, int32_t vinkel);

#endif	// EXCELLUT_H

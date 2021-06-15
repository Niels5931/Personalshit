#ifndef TIMER_H_
#define TIMER_H_

#include "30010_io.h"
#include "stm32f30x_conf.h"

typedef struct {

	int16_t s;
	int16_t m;
	int16_t h;

} timerer_t;

void TIM4_IRQHandler(void);

void setTimer(int timX, int priority, int preScale);

void delay_ms(uint32_t);

#endif /* TIMER_H_ */

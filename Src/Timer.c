#include "Timer.h"

volatile int32_t ticks = 0;

void setTimer(int timX, int priority, int preScale) {
	switch(timX){
		case 2:
			RCC->APB1ENR |= RCC_APB1Periph_TIM2; // Enable clock line to timer 2;
			TIM2->CR1 = 0x0000;
			TIM2->ARR = 0xF9FF; // Set reload value
			TIM2->PSC = preScale; // Set prescal6value
			TIM2->DIER |= 0x0001; // Enable timer 2 interrupts
			TIM2->CR1 |= 0x0001;

			NVIC_SetPriority(TIM2_IRQn, priority); // Set interrupt priority
			NVIC_EnableIRQ(TIM2_IRQn);
			break;
		case 3:
			RCC->APB1ENR |= RCC_APB1Periph_TIM3; // Enable clock line to timer 2;
			TIM3->CR1 = 0x0000;
			TIM3->ARR = 0x9C3FF/4; // Set reload value
			TIM3->PSC = preScale*4; // Set prescal6value
			TIM3->DIER |= 0x0001; // Enable timer 3 interrupts
			TIM3->CR1 |= 0x0001;

			NVIC_SetPriority(TIM3_IRQn, priority); // Set interrupt priority
			NVIC_EnableIRQ(TIM3_IRQn);

			break;
		case 4:
			RCC->APB1ENR |= RCC_APB1Periph_TIM4; // Enable clock line to timer 2;
			TIM4->CR1 = 0x0000;
			TIM4->ARR = 0x9C3FF; // Set reload value
			TIM4->PSC = preScale; // Set prescal6value
			TIM4->DIER |= 0x0001; // Enable timer 4 interrupts
			TIM4->CR1 |= 0x0001;

			NVIC_SetPriority(TIM4_IRQn, priority); // Set interrupt priority
			NVIC_EnableIRQ(TIM4_IRQn);

			break;
		default:
			printf("ERROR! Wrong Timer (2,3,4)\n");
			break;
	}
}

void delay_ms(uint32_t ms){
	setTimer(2, 0, 0);
	ticks=0;
	while(ticks<ms){};
	TIM2->DIER &= ~(0x0001);
}

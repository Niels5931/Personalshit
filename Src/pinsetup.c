#include "pinsetup.h"

void setPinIn(char ltr, uint8_t pin){
	switch(ltr){
		case 'A':
			// Enable clock for GPIOA
			RCC->AHBENR |= RCC_AHBPeriph_GPIOA;
			// Clear mode register
			GPIOA->MODER &= ~(0x00000003 << (pin * 2));
			// Set mode register (0x00 – Input, 0x01 - Output, 0x02 - Alternate Function, 0x03 - Analog in/out)
			GPIOA->MODER |= (0x00000000 << (pin * 2));
			// Clear push/pull register
			GPIOA->PUPDR &= ~(0x00000003 << (pin * 2));
			// Set push/pull register (0x00 - No pull, 0x01 - Pull-up, 0x02 - Pull-down)
			GPIOA->PUPDR |= (0x00000002 << (pin * 2));
			break;
		case 'B':
			//GPIOB
			RCC->AHBENR  |= RCC_AHBPeriph_GPIOB;
			GPIOB->MODER &= ~(0x00000003 << (pin * 2));
			GPIOB->MODER |= (0x00000000  << (pin * 2));
			GPIOB->PUPDR &= ~(0x00000003 << (pin * 2));
			GPIOB->PUPDR |= (0x00000002  << (pin * 2));
			break;
		case 'C':
			//GPIOC
			RCC->AHBENR  |= RCC_AHBPeriph_GPIOC;
			GPIOC->MODER &= ~(0x00000003 << (pin * 2));
			GPIOC->MODER |= (0x00000000  << (pin * 2));
			GPIOC->PUPDR &= ~(0x00000003 << (pin * 2));
			GPIOC->PUPDR |= (0x00000002  << (pin * 2));
			break;
		default:
			printf("ERROR! Wrong GPOIx\n");
			break;
	}
}

void setPinOut(char ltr, uint8_t pin){
	switch(ltr){
		case 'A':
			// Set pin PAx to output
			// Clear speed register
			GPIOA->OSPEEDR &= ~(0x00000003 << (pin * 2));
			// set speed register (0x01 - 10 MHz, 0x02 - 2 MHz, 0x03 - 50 MHz)
			GPIOA->OSPEEDR |=  (0x00000002 << (pin * 2));
			// Clear output type register
			GPIOA->OTYPER  &= ~(0x0001     << (pin * 1));
			// Set output type register (0x00 - Push pull, 0x01 - Open drain)
			GPIOA->OTYPER  |=  (0x0000     << (pin));
			// Clear mode register
			GPIOA->MODER   &= ~(0x00000003 << (pin * 2));
			// Set mode register (0x00 – Input, 0x01 - Output, 0x02 - Alternate Function, 0x03 - Analog in/out)
			GPIOA->MODER   |=  (0x00000001 << (pin * 2));
			GPIOA->ODR     &=  (0x0000     <<  pin);
			break;
		case 'B':
			// Set pin PCx to output
			GPIOB->OSPEEDR &= ~(0x00000003 << (pin * 2));
			GPIOB->OSPEEDR |=  (0x00000002 << (pin * 2));
			GPIOB->OTYPER  &= ~(0x0001     << (pin * 1));
			GPIOB->OTYPER  |=  (0x0000     << (pin));
			GPIOB->MODER   &= ~(0x00000003 << (pin * 2));
			GPIOB->MODER   |=  (0x00000001 << (pin * 2));
			GPIOA->ODR     &=  (0x0000     <<  pin);
			break;
		case 'C':
			// Set pin PCx to output
			GPIOC->OSPEEDR &= ~(0x00000003 << (pin * 2));
			GPIOC->OSPEEDR |= (0x00000002  << (pin * 2));
			GPIOC->OTYPER  &= ~(0x0001     << (pin * 1));
			GPIOC->OTYPER  |= (0x0000      << (pin));
			GPIOC->MODER   &= ~(0x00000003 << (pin * 2));
			GPIOC->MODER   |= (0x00000001  << (pin * 2));
			GPIOA->ODR     &= (0x0000      <<  pin);
			break;
		default:
			printf("ERROR! Wrong GPOIx\n");
			break;
	}
}

uint16_t readPinVal(char ltr, uint8_t pin){
	uint16_t temp;
	switch(ltr){
		case 'A':
			temp =  GPIOA->IDR & (0x0001 << pin);
			break;
		case 'B':
			temp =  GPIOB->IDR & (0x0001 << pin);
			break;
		case 'C':
			temp =  GPIOC->IDR & (0x0001 << pin);
			break;
		default:
			printf("ERROR! Wrong GPOIx\n");
			break;
	}
	return temp;
}

void writePinVal(char ltr, uint8_t pin, uint16_t val){
	if(val == 0){
		switch(ltr){
			case 'A':
				GPIOA->ODR &= (val << pin);
				break;
			case 'B':
				GPIOB->ODR &= (val << pin);
				break;
			case 'C':
				GPIOC->ODR &= (val << pin);
				break;
			default:
				printf("ERROR! Wrong GPOIx\n");
				break;
		}
	}else{
		switch(ltr){
			case 'A':
				GPIOA->ODR |= (val << pin);
				break;
			case 'B':
				GPIOB->ODR |= (val << pin);
				break;
			case 'C':
				GPIOC->ODR |= (val << pin);
				break;
			default:
				printf("ERROR! Wrong GPOIx\n");
				break;
		}
	}
}

void initPotADC(){
	setPinIn('A',0);
	setPinIn('A',1);

	RCC->CFGR2 &= ~RCC_CFGR2_ADCPRE12; // Clear ADC12 prescaler bits
	RCC->CFGR2 |= RCC_CFGR2_ADCPRE12_DIV6; // Set ADC12 prescaler to 6
	RCC->AHBENR |= RCC_AHBPeriph_ADC12; // Enable clock for ADC12

	ADC1->CR = 0x00000000; // Clear CR register
	ADC1->CFGR &= 0xFDFFC007; // Clear ADC1 config register
	ADC1->SQR1 &= ~ADC_SQR1_L; // Clear regular sequence register 1

	ADC1->CR |= 0x10000000; // Enable internal ADC voltage regulator
	for (int i = 0 ; i < 1000 ; ++i) {} // Wait for about 16 microseconds

	ADC1->CR |= 0x80000000; // Start ADC1 calibration
	while (!(ADC1->CR & 0x80000000)); // Wait for calibration to finish
	for (int i = 0 ; i < 100 ; ++i) {} // Wait for a little while

	ADC1->CR |= 0x00000001; // Enable ADC1 (0x01 - Enable, 0x02 - Disable)
	while (!(ADC1->ISR & 0x00000001)); // Wait until ready
	ADC_RegularChannelConfig(ADC1, ADC_Channel_1, 1, ADC_SampleTime_1Cycles5);

}
uint16_t readPot(uint8_t pot1) {

	if(pot1)
		ADC_RegularChannelConfig(ADC1, ADC_Channel_2, 1, ADC_SampleTime_1Cycles5);
	else
		ADC_RegularChannelConfig(ADC1, ADC_Channel_1, 1, ADC_SampleTime_1Cycles5);

	 ADC_StartConversion(ADC1); // Start ADC read
	 while (ADC_GetFlagStatus(ADC1, ADC_FLAG_EOC) == 0) {}; // Wait for ADC read
	 return ADC_GetConversionValue(ADC1); // Read the ADC value

}



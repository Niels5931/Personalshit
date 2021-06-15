/*
 * main.c
 *
 *  Created on: 14. jun. 2021
 *      Author: user
 */


#include "structures.h"
#include "display.h"
#include "30010_io.h"
#include "Timer.h"
#include "ansi.h"
#include <stdlib.h>

int8_t count = 0, brah = 0;

void TIM2_IRQHandler(void) {
 ++count;

 if(count == 50) {

     count = 0;
     brah = 1;

 }

 TIM2->SR &= ~0x0001; // Clear interrupt bit
 }

void convert(uint8_t coords[][128], uint8_t *buffer) {

    for(int j = 0; j < 4; j++) {

        for (int i = 0; i < 128; i++) {

            buffer[i+ j * 128]=coords[7+j*8][i] << 7 | coords[6+j*8][i] << 6 | coords[5+j*8][i] << 5 | coords[4+j*8][i] << 4| coords[3+j*8][i] << 3| coords[2+j*8][i] << 2|coords[1+j*8][i] << 1|coords[0+j*8][i];


        }

    }

}


int main() {
    uart_init(9600);

    clrscr();

    gotoxy(0,0);

    lcd_init();

    setTimer(2,0,0);

    bullet_t bullet, * bulletArr;

    bulletArr = (bullet_t *) malloc(20* sizeof(bullet_t));

    uint8_t coords[32][128] = {0};

    uint8_t buffer[512];

    printf("Bruh");

    initBullet(&bullet,bulletArr,60,10);

    draw_bullet(&bullet,bulletArr, coords);

    convert(coords,buffer);

    lcd_push_buffer(buffer);

    while(1) {

    	if(brah) {

    		brah = 0;

    		for (int i = 0; i < 3; i++) {

    			if(bullet.points[i].x + i < 128) {
    				bullet.points[i].x++;
    			}
    		}

    		memset(coords,0,sizeof coords);

    		draw_bullet(&bullet,bulletArr,coords);

    		convert(coords,buffer);

    		lcd_push_buffer(buffer);

    	}

    }

}

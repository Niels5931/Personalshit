#include "battleship.h"


#include <string.h>



void battleship_game(uint8_t* buffer){
	uint1_t pxarr[128][32] = {0};
	uint8_t player = menu(buffer);
	memset(buffer,0x00,512);
	lcd_push_buffer(buffer);


	printf("nononono");
	delay_ms(1000);
	printf("cdfdf");
	waiting_screen(buffer, 1);
	place_ships(buffer, pxarr);
	player == 1 ? player1(buffer, pxarr) : player2(buffer, pxarr);

}

uint8_t menu(uint8_t* buffer){
	uint8_t player = 1;

	setPinIn('A',4); //JS Up
	setPinIn('B',0); //JS Down
	setPinIn('C',1); //JS Left
	setPinIn('C',0); //JS Right
	setPinIn('B',5); //JS Center


	char* welcomeL1 = "        BATTLESHIP        ";
	char* welcomeL2 = "===========MENU===========";
	char* welcomeL3 = "* Player1         Player2 ";
	char* welcomeL3b= "  Player1       * Player2 ";
	char* welcomeL4 = "==========================";

	lcd_str_line(buffer,welcomeL1,0);
	lcd_str_line(buffer,welcomeL2,1);
	lcd_str_line(buffer,welcomeL3,2);
	lcd_str_line(buffer,welcomeL4,3);
	lcd_push_buffer(buffer);

	while(!readPinVal('B',5)){
		if(readPinVal('C',1)){ //JS Left
			lcd_str_line(buffer,welcomeL3,2);
			lcd_push_buffer(buffer);
			player = 1;
		}else if(readPinVal('C',0)){ //JS Right
			lcd_str_line(buffer,welcomeL3b,2);
			lcd_push_buffer(buffer);
			player = 2;
		}
	}
	return player;
}

void waiting_screen(uint8_t* buffer, uint8_t screen){
	char* welcomeL1 = "                          ";
	char* welcomeL2;
	char* welcomeL3 = "         Press  v         ";
	char* welcomeL4 = "     on the joystick      ";

	switch(screen){
		case 1:
			welcomeL2 = "====== Place  Ships ======";
			break;
		case 2:
			welcomeL2 = "=== Shoot enemy ships ====";
			break;
	}

	lcd_str_line(buffer,welcomeL1,0);
	lcd_str_line(buffer,welcomeL2,1);
	lcd_str_line(buffer,welcomeL3,2);
	lcd_str_line(buffer,welcomeL4,3);
	lcd_push_buffer(buffer);
	while(!readPinVal('B',0)){}

}

void player1(uint8_t* buffer,  uint1_t pxarr[][32]){
	printf("player1\n");
	waiting_screen(buffer, 2);
	uint1_t cursorarr[128][32] = {0};
	uint1_t win=0, lose=0;
	while(!win || !lose){
		memset(buffer, 0x00, 512);
		ship_t cursor;
		cursor.x1 = 60;
		cursor.y1 = 8;
		cursor.x2 = 63;
		cursor.y2 = 15;

		draw_cursor(buffer,cursorarr,cursor);
		lcd_push_buffer(buffer);


		while(readPinVal('B',5)){}
		while(!readPinVal('B',5)){
			if(readPinVal('C',1) && cursor.x1 != 0){ //JS Left
				while(readPinVal('C',1)){}
				clear_ship(buffer, cursorarr, cursor);
				cursor.x1 -= 4;
				cursor.x2 -= 4;
				draw_cursor(buffer, cursorarr, cursor);
			}else if(readPinVal('C',0) && cursor.x2 != 127){ //JS Right
				while(readPinVal('C',0)){}
				clear_ship(buffer, cursorarr, cursor);
				cursor.x1 += 4;
				cursor.x2 += 4;
				draw_cursor(buffer, cursorarr, cursor);
			}else if(readPinVal('A',4) && cursor.y1 != 0){ //JS Up
				while(readPinVal('A',4)){}
				clear_ship(buffer, cursorarr, cursor);
				cursor.y1 -= 8;
				cursor.y2 -= 8;
				draw_cursor(buffer, cursorarr, cursor);
			}else if(readPinVal('B',0) && cursor.y2 != 31){ //JS Down
				while(readPinVal('B',0)){}
				clear_ship(buffer, cursorarr, cursor);
				cursor.y1 += 8;
				cursor.y2 += 8;
				draw_cursor(buffer, cursorarr, cursor);

			}
		}
		clear_ship(buffer, cursorarr, cursor);



	}
}

void player2(uint8_t* buffer,  uint1_t pxarr[][32]){
	printf("player2\n");
	lcd_push_buffer(buffer);
}

void place_ships(uint8_t* buffer, uint1_t pxarr[][32]){
	uint8_t i;
	ship_t ship[10];

	for(i=0;i<5;i++){
		ship[i].x1 = 0;
		ship[i].y1 = 0;
		ship[i].x2 = 3;
		ship[i].y2 = 7;

		draw_ship(buffer, pxarr, ship[i]);

		while(readPinVal('B',5)){}
		while(!readPinVal('B',5)){
			if(readPinVal('C',1) && ship[i].x1 != 0 && !pxarr[ship[i].x1-4][ship[i].y1]){ //JS Left
				while(readPinVal('C',1)){}
				clear_ship(buffer, pxarr, ship[i]);
				ship[i].x1 -= 4;
				ship[i].x2 -= 4;
				draw_ship(buffer, pxarr, ship[i]);
			}else if(readPinVal('C',0) && ship[i].x2 != 127 && !pxarr[ship[i].x1+4][ship[i].y1]){ //JS Right
				while(readPinVal('C',0)){}
				clear_ship(buffer, pxarr, ship[i]);
				ship[i].x1 += 4;
				ship[i].x2 += 4;
				draw_ship(buffer, pxarr, ship[i]);
			}else if(readPinVal('A',4) && ship[i].y1 != 0 && !pxarr[ship[i].x1][ship[i].y1-8]){ //JS Up
				while(readPinVal('A',4)){}
				clear_ship(buffer, pxarr, ship[i]);
				ship[i].y1 -= 8;
				ship[i].y2 -= 8;
				draw_ship(buffer, pxarr, ship[i]);
			}else if(readPinVal('B',0) && ship[i].y2 != 31 && !pxarr[ship[i].x1][ship[i].y1+8]){ //Down
				while(readPinVal('B',0)){}
				clear_ship(buffer, pxarr, ship[i]);
				ship[i].y1 += 8;
				ship[i].y2 += 8;
				draw_ship(buffer, pxarr, ship[i]);
			}
		}
	}
}

void clear_ship(uint8_t* buffer, uint1_t pxarr[][32], ship_t ship){
	uint8_t i,j;
	for(i = ship.x1;i<=ship.x2;i++){
		for(j = ship.y1; j<=ship.y2; j++){
			pxarr[i][j] = 0;
		}
	}
	lcd_set_pixels(pxarr, buffer);
}

void draw_ship(uint8_t* buffer, uint1_t pxarr[][32], ship_t ship){
	uint8_t i,j;
	for(i = ship.x1;i<=ship.x2;i++){
		for(j = ship.y1; j<=ship.y2; j++){
			pxarr[i][j] = 1;
		}
	}
	lcd_set_pixels(pxarr, buffer);
	lcd_push_buffer(buffer);
}

void draw_cursor(uint8_t* buffer, uint1_t pxarr[][32], ship_t ship){
	uint8_t i,j;
	for(i = ship.x1;i<=ship.x2;i+=2){
		for(j = ship.y1; j<=ship.y2; j+=2){
			pxarr[i][j] = 1;
		}
	}
	lcd_set_pixels(pxarr, buffer);
	lcd_push_buffer(buffer);
}

void send_bomb(){

}

void receive_bomb(){

}

/*
FROM MAIN

#include "stm32f30x_conf.h" // STM32 config
#include "30010_io.h" 		// Input/output library for this course

#include "display.h"
#include "Timer.h"

#include <string.h>
#include "Timer.h"
#include "extint.h"

#include "battleship.h"

int main(void){

	uart_init(9600);

	lcd_init();

	//printf("123456789");

	uint8_t buffer[512];

	memset(buffer,0x20,512);

	uint1_t pixels[128][32];
	memset(pixels, 0, sizeof pixels);

	/*
	uint8_t i,j;
	for(i=0;i<128;i++){
		for(j=0;j<32;j++){
			//if(j%4 && i%4) pixels[i][j] = 1;
			else pixels[i][j] = 0;
		}
	}
	*//*
	pixels[63][15] = 1;
	pixels[63][16] = 1;
	pixels[64][15] = 1;
	pixels[64][16] = 1;



	lcd_set_pixels(pixels, buffer);

	battleship_game(buffer);

	lcd_push_buffer(buffer);

	while(1) {}
}
*/

#ifndef BATTLESHIP_H_
#define BATTLESHIP_H_

#include <stdint.h>
#include "display.h"
#include "pinsetup.h"
#include "extint.h"
#include "Timer.h"

typedef struct{
	uint8_t x1;
	uint8_t y1;
	uint8_t x2;
	uint8_t y2;
}ship_t;

void battleship_game(uint8_t*);

uint8_t menu(uint8_t*);
void waiting_screen(uint8_t*, uint8_t);

void player1(uint8_t*,  uint1_t [][32]);
void player2(uint8_t*,  uint1_t [][32]);
void place_ships(uint8_t*,  uint1_t [][32]);

void draw_ship(uint8_t* , uint1_t [][32], ship_t);
void clear_ship(uint8_t* , uint1_t [][32], ship_t);
void draw_cursor(uint8_t* , uint1_t [][32], ship_t);

void send_bomb();
void receive_bomb();

#endif /* BATTLESHIP_H_ */

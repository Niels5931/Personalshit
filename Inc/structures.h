/*
 * structures.h
 *
 *  Created on: 10. jun. 2021
 *      Author: user
 */

#ifndef STRUCTURES_H_
#define STRUCTURES_H_

#include <stdint.h>
#include "extint.h"

typedef struct {

	uint8_t x;
	uint8_t y;

} point_t;

typedef struct {

	uint8_t size;
	uint8_t cx;
	uint8_t cy;
	point_t points[512];

} asteroid_t;

typedef struct {

	uint8_t x;
	uint8_t y;
	point_t points[512];
	uint1_t alive;

} bullet_t;

typedef struct {

	bullet_t bullets[20];

};

typedef struct {

	uint8_t x;
	uint8_t y;
	point_t points[4];
	point_t rotpoints[4];

} ship_t;

void initAsteroid(asteroid_t *, uint8_t, point_t);
void draw_asteroid(asteroid_t *);

void initPoint(point_t *, uint8_t,uint8_t);

void initShip(ship_t *,uint8_t,uint8_t);

void initBullet(bullet_t * , bullet_t * ,uint8_t,uint8_t);
void draw_bullet(bullet_t *, bullet_t * ,uint8_t[][128]);

void calc_gravity(asteroid_t, ship_t *);

void rotate_Ship(ship_t *, int16_t);



#endif /* STRUCTURES_H_ */

/*
 * structures.c
 *
 *  Created on: 10. jun. 2021
 *      Author: user
 */
#include <stdint.h>
#include "structures.h"
#include "ExcelLut.h"
uint8_t indexArr = 0;

void initPoint(point_t *point, uint8_t x, uint8_t y) {

    point->x = x;
    point->y = y;

}

void initAsteroid(asteroid_t *asteroid, uint8_t size,point_t point ) {

    asteroid->size = size;
    asteroid->cx = point.x;
    asteroid->cy = point.y;

}

void initBullet(bullet_t * bullet, bullet_t * bulletArr, uint8_t x, uint8_t y) {


	bullet->x = x;
	bullet->y = y;
	bullet->alive = 1;

	int i;

	for (i = 0; i < 3; i++) {

			bullet->points[i].x = bullet->x+i;
			bullet->points[i].y = bullet->y;

		}


}

void draw_asteroid(asteroid_t *asteroid) {

    point_t point;

    uint8_t size = asteroid->size;
    uint8_t x = asteroid->cx;
    uint8_t y = asteroid->cy;

    int i;

    for (i = -size+1; i < size; i++) {

        if(asteroid->cx - size >= 0 && asteroid->cy + i >= 0 && asteroid->cy + i < 32) {
            point.x = x-size;
            point.y = y+i;
            asteroid->points[indexArr] = point;
            indexArr++;
        }
    }
    for (i = -size+1; i < size; i++) {

        if(asteroid->cx + size < 128 &&  asteroid->cy + i >= 0 && asteroid->cy + i < 32) {
                point.x = x+size;
                point.y = y+i;
                asteroid->points[indexArr] = point;
                indexArr++;
        }
    }
    for (i = -size +1; i < size; i++) {

        if (y - size >= 0 &&  x + i >= 0 && x + i < 128 ) {
            point.x = x+i;
            point.y = y-size;
            asteroid->points[indexArr] = point;
            indexArr++;

        }

    }
    for (i = -size +1; i < size; i++) {

        if (y + size < 32 && x + i >= 0 && x + i < 128 ) {
            point.x = x+i;
            point.y = y+size;
            asteroid->points[indexArr] = point;
            indexArr++;

        }

    }

    if(x >= 0 && x < 128 && y >= 0 && y < 32) {

    asteroid->points[indexArr].x = x;
    asteroid->points[indexArr].y = y;
    } else indexArr--;
}

void draw_bullet(bullet_t * bullet, bullet_t * bulletArr, uint8_t coords[][128]) {

	int i, j;

	for(i = 0; i < 20; i++) {

		if (bulletArr[i].points[0].x+1 > 127) {

			bulletArr[i].alive = 0;

		}

	}

	for(i = 0; i < 20; i++) {

		if (bulletArr[i].alive == 1) {

			for(j = 0; j < 3; j++) {

				bullet->points[i].x++;

			}

		}

	}

	for(i = 0; i < 3; i++) {

		if(bullet->points[i].x < 128) {

			coords[bullet->points[i].y][bullet->points[i].x] = 1;

		}

	}
}

void calc_gravity_ship(asteroid_t asteroid, ship_t * ship) {
    int8_t dx = ship->x - asteroid.cx;
    int8_t dy = ship->y - asteroid.cy;

    uint8_t dist;

    int8_t gravityx;
    int8_t gravityy;

    if (dx < 0 && dy < 0) {

        dist = -1*(dx+dy);

    } else if (dx < 0 && dy > 0) {

        dist = -1*dx + dy;

    } else if (dx > 0 && dy < 0) {

        dist = dx + -1*dy;

    } else {

        dist = dx + dy;

    }


    gravityx = dx/dist * asteroid.size;
    gravityy = dy/dist * asteroid.size;

    ship->x += gravityx;
    ship->y += gravityy;

}

void calc_gravity_bullet(asteroid_t asteroid, bullet_t * bullet) {

    int8_t dx = bullet->x - asteroid.cx;
    int8_t dy = bullet->y - asteroid.cy;

    uint8_t dist;

    int8_t gravityx;
    int8_t gravityy;

    if (dx < 0 && dy < 0) {

        dist = -1*(dx+dy);

    } else if (dx < 0 && dy > 0) {

        dist = -1*dx + dy;

    } else if (dx > 0 && dy < 0) {

        dist = dx + -1*dy;

    } else {

        dist = dx + dy;

    }


    gravityx = dx/dist * asteroid.size;
    gravityy = dy/dist * asteroid.size;

    bullet->x += gravityx;
    bullet->y += gravityy;

}

void rotate_ship(ship_t * ship, int16_t vinkel) {

	//printf("rotating ship: \n");
    vector_t vector;
    point_t cpoint;

    for (int i = 0; i < 4; i++) {
        cpoint = ship->points[i];

        vector.x = cpoint.x ;
        vector.y =  cpoint.y ;

        //printf("ship point coords i: %ld, x= %ld, y= %ld \n ",i,(cpoint.x),cpoint.y);
        //printf("vector %d, x= %d, y= %d \n",i,vector.x,vector.y);
        rotateVector(&vector,vinkel);

        //printf("vector %d, x= %d, y= %d \n",i,vector.x,vector.y);
        //printf("vector shifted 14 %d, x= %d, y= %d \n",i,(vector.x + 8192 ) >> 14,(vector.y + 8192 ) >> 14);


        ship->rotpoints[i].x = (vector.x + 8192 ) >> 14;
        ship->rotpoints[i].y = (vector.y + 8192 ) >> 14;


        }
}




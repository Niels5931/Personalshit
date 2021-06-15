#include "window.h"
#include "ansi.h"

void draw_window(uint8_t x1, uint8_t y1,uint8_t x2, uint8_t y2, char* style,char* title){
	uint8_t xmax = x2-x1, ymax = y2-y1, i, j,k,l, toplines=xmax - 11, stylenum;


	if(xmax < 2 || ymax < 2){
		printf("Dimensions to small for window");
	}else{
		//gotoxy(x1,y1);
		stylenum = strcmp("thin", style) ? 0 : 1;

		drawEdges(x1,y1,x2,y2,stylenum);
		if (title[0] != '\0') drawTitle(x1,y1,x2,y2,stylenum,title);
	}
}
void drawEdges(uint8_t x1, uint8_t y1,uint8_t x2,uint8_t y2, uint8_t stylenum){
	uint8_t i, j;
	for(i=x1; i<=x2; i++){
		for(j=y1; j<=y2; j++){
			if(j==y1 || j== y2){
				gotoxy(i,j);
				if(i==x1){
					j==y2 ? printf("%c\n",200-stylenum*8) : printf("%c\n",201+stylenum*17);
				}else if(i == x2) j==y1 ? printf("%c",187+stylenum*4) :printf("%c",188+stylenum*29);
				else printf("%c",205-stylenum*9);
			}else if(i==x1 || i==x2){ // draw vert lines
				gotoxy(i,j);
				printf("%c",186-stylenum*7);
			}
		}
	}
}
void drawTitle(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2,uint8_t stylenum, char* title){
	uint8_t i=1,cnt=0, maxx=x2-x1-2;

	while(*(title+cnt) != '\0') ++cnt;

	if( cnt > maxx) cnt = maxx-1;
	else {
		i += (maxx-cnt)/2;
	}

	gotoxy(x1,y1);
	printf("%c",201+stylenum*17); // upleft corner
	gotoxy(x1+i,y1);
	printf("%c",185-stylenum*5); // start of title banner

	if(!stylenum) inverse(1);
	gotoxy(x1+(++i),y1);

	for(i=0; i < cnt; ++i) printf("%c",*(title+i)); // print title
	if(!stylenum) inverse(0);

	printf("%c",204-stylenum*9); // end of title banner
}

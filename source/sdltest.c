#include <SDL2/SDL.h>
#include <stdio.h>

int main(void)
	{
	if (SDL_Init(SDL_INIT_VIDEO) != 0)
		{
		printf("SDL_Init Error: %s\n", SDL_GetError());
		return 1;
		}

	SDL_Window *win = SDL_CreateWindow("Hello World!", 100, 100, 640, 480, SDL_WINDOW_SHOWN);
	if (win == NULL)
		{
		printf("SDL_CreateWindow Error: %s\n", SDL_GetError());
		SDL_Quit();
		return 1;
		}

	SDL_Renderer *ren = SDL_CreateRenderer(win, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
	if (ren == NULL)
		{
		SDL_DestroyWindow(win);
		printf("SDL_CreateRenderer Error: %s\n", SDL_GetError());
		SDL_Quit();
		return 1;
		}

	char *imagePath = "../hello.bmp";
	SDL_Surface *bmp = SDL_LoadBMP(imagePath);
	if (bmp == NULL)
		{
		SDL_DestroyRenderer(ren);
		SDL_DestroyWindow(win);
		printf("SDL_LoadBMP Error: %s\n", SDL_GetError());
		SDL_Quit();
		return 1;
		}

	SDL_Texture *tex = SDL_CreateTextureFromSurface(ren, bmp);
	SDL_FreeSurface(bmp);
	if (tex == NULL)
		{
		SDL_DestroyRenderer(ren);
		SDL_DestroyWindow(win);
		printf("SDL_CreateTextureFromSurface Error: %s\n", SDL_GetError());
		SDL_Quit();
		return 1;
		}

	//A sleepy rendering loop, wait for 3 seconds and render and present the screen each time
	for (int i = 0; i < 3; ++i)
		{
		//First clear the renderer
		SDL_RenderClear(ren);
		//Draw the texture
		SDL_RenderCopy(ren, tex, NULL, NULL);
		//Update the screen
		SDL_RenderPresent(ren);
		//Take a quick break after all that hard work
		SDL_Delay(1000);
		}

	SDL_DestroyTexture(tex);
	SDL_DestroyRenderer(ren);
	SDL_DestroyWindow(win);
	SDL_Quit();

	return 0;
	}

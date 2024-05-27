#include "client/gui/FontLoader.h"

#include <stdio.h>
#include <stdlib.h>

#include "client/Exception.h"
#include "client/renderer/texture/Texture.h"

void FontLoader_Init(Font* font) {
	font->texture = new Texture(ResourceLocation("font/ascii.t3x"), true);
	int c		  = 0;

	u32* image = (u32*)font->texture->getTexture()->data;
	for (int y = 0; y < 128; y += 8) {
		for (int x = 0; x < 128; x += 8) {
			int length		= 2;
			bool foundPixel = true;
			for (int i = 2; i < 8 && foundPixel; i++) {
				foundPixel = false;
				length++;
				for (int j = 0; j < 8; j++)
					foundPixel |= !!image[(y + j) * 128 + (x + i)];
			}

			font->fontWidth[c++] = length;
		}
	}
}
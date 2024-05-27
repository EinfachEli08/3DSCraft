#pragma once

#include <stdint.h>

#include <citro3d.h>

class Texture;
struct Font {
		uint8_t fontWidth[1 << 8];
		Texture* texture;
};

void FontLoader_Init(Font* font);
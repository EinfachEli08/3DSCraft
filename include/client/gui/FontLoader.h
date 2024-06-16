#pragma once

#include <stdint.h>

#include <citro3d.h>

class Texture;
struct Font {
		u8 fontWidth[1 << 8];
		Texture* texture;
};

void FontLoader_Init(Font* font);
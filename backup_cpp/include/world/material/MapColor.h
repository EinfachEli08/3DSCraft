#pragma once

#include <3ds/types.h>

#include "client/Exception.h"

namespace MapColor {

enum _ {
	NONE,
	GRASS,
	SAND,
	WOOL,
	FIRE,
	ICE,
	METAL,
	PLANT,
	SNOW,
	CLAY,
	DIRT,
	STONE,
	WATER,
	WOOD,
	QUARTZ,
	COLOR_ORANGE,
	COLOR_MAGENTA,
	COLOR_LIGHT_BLUE,
	COLOR_YELLOW,
	COLOR_LIGHT_GREEN,
	COLOR_PINK,
	COLOR_GRAY,
	COLOR_LIGHT_GRAY,
	COLOR_CYAN,
	COLOR_PURPLE,
	COLOR_BLUE,
	COLOR_BROWN,
	COLOR_GREEN,
	COLOR_RED,
	COLOR_BLACK,
	GOLD,
	DIAMOND,
	LAPIS,
	EMERALD,
	PODZOL,
	NETHER,
	TERRACOTTA_WHITE,
	TERRACOTTA_ORANGE,
	TERRACOTTA_MAGENTA,
	TERRACOTTA_LIGHT_BLUE,
	TERRACOTTA_YELLOW,
	TERRACOTTA_LIGHT_GREEN,
	TERRACOTTA_PINK,
	TERRACOTTA_GREY,
	TERRACOTTA_LIGHT_GRAY,
	TERRACOTTA_CYAN,
	TERRACOTTA_PURPLE,
	TERRACOTTA_BLUE,
	TERRACOTTA_BROWN,
	TERRACOTTA_GREEN,
	TERRACOTTA_RED,
	TERRACOTTA_BLACK
};

namespace Brightness {
	enum _ : u8 {
		LOW,
		NORMAL,
		HIGH,
		LOWEST
	};
	static constexpr u8 BRIGHTNESS[] = {180, 220, 255, 135};
	static u8 get(_ brightness) {
		return BRIGHTNESS[brightness];
	}
}  // namespace Brightness

static constexpr u32 COLORS[] = {
	0,		   // MapColor::NONE
	8368696,   // MapColor::GRASS
	16247203,  // MapColor::SAND
	13092807,  // MapColor::WOOL
	16711680,  // MapColor::FIRE
	10526975,  // MapColor::ICE
	10987431,  // MapColor::METAL
	31744,	   // MapColor::PLANT
	16777215,  // MapColor::SNOW
	10791096,  // MapColor::CLAY
	9923917,   // MapColor::DIRT
	7368816,   // MapColor::STONE
	4210943,   // MapColor::WATER
	9402184,   // MapColor::WOOD
	16776437,  // MapColor::QUARTZ
	14188339,  // MapColor::COLOR_ORANGE
	11685080,  // MapColor::COLOR_MAGENTA
	6724056,   // MapColor::COLOR_LIGHT_BLUE
	15066419,  // MapColor::COLOR_YELLOW
	8375321,   // MapColor::COLOR_LIGHT_GREEN
	15892389,  // MapColor::COLOR_PINK
	5000268,   // MapColor::COLOR_GRAY
	10066329,  // MapColor::COLOR_LIGHT_GRAY
	5013401,   // MapColor::COLOR_CYAN
	8339378,   // MapColor::COLOR_PURPLE
	3361970,   // MapColor::COLOR_BLUE
	6704179,   // MapColor::COLOR_BROWN
	6717235,   // MapColor::COLOR_GREEN
	10040115,  // MapColor::COLOR_RED
	1644825,   // MapColor::COLOR_BLACK
	16445005,  // MapColor::GOLD
	6085589,   // MapColor::DIAMOND
	4882687,   // MapColor::LAPIS
	55610,	   // MapColor::EMERALD
	8476209,   // MapColor::PODZOL
	7340544,   // MapColor::NETHER
	13742497,  // MapColor::TERRACOTTA_WHITE
	10441252,  // MapColor::TERRACOTTA_ORANGE
	9787244,   // MapColor::TERRACOTTA_MAGENTA
	7367818,   // MapColor::TERRACOTTA_LIGHT_BLUE
	12223780,  // MapColor::TERRACOTTA_YELLOW
	6780213,   // MapColor::TERRACOTTA_LIGHT_GREEN
	10505550,  // MapColor::TERRACOTTA_PINK
	3746083,   // MapColor::TERRACOTTA_GRAY
	8874850,   // MapColor::TERRACOTTA_LIGHT_GRAY
	5725276,   // MapColor::TERRACOTTA_CYAN
	8014168,   // MapColor::TERRACOTTA_PURPLE
	4996700,   // MapColor::TERRACOTTA_BLUE
	4993571,   // MapColor::TERRACOTTA_BROWN
	5001770,   // MapColor::TERRACOTTA_GREEN
	9321518,   // MapColor::TERRACOTTA_RED
	2430480	   // MapColor::TERRACOTTA_BLACK
};

static u32 getPacked(MapColor::_ color) {
	return COLORS[color];
}

static u8* get(u8 colorId) {
	return get(colorId, Brightness::NORMAL);
}
static u8* get(u8 colorId, u8 brightnessId) {
	if (colorId == NONE)
		return 0;

	static u8 rgb[3];

	u32 col	  = COLORS[colorId];
	u8 bright = Brightness::BRIGHTNESS[brightnessId];
	rgb[0]	  = (col >> 16 & 255) * bright / 255;
	rgb[1]	  = (col >> 8 & 255) * bright / 255;
	rgb[2]	  = (col & 255) * bright / 255;

	return rgb;
}
static u8* getColorFromPackedId(u32 value) {
	u8 i = value & 255;
	return get(i >> 2, i & 3);
}
};	// namespace MapColor

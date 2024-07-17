#pragma once

#include <3ds/types.h>
#include <stdint.h>

struct InputData {
		uint32_t keysheld, keysdown, keysup;
		int16_t circlePadX, circlePadY;
		uint16_t touchX, touchY;
		int16_t cStickX, cStickY;
};

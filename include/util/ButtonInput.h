#pragma once

#include <3ds/types.h>
#include <stdint.h>

struct InputData {
		u32 keysheld, keysdown, keysup;
		s16 circlePadX, circlePadY;
		u16 touchX, touchY;
		s16 cStickX, cStickY;
};
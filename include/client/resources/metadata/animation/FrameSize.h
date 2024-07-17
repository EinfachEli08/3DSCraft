#pragma once

#include <3ds/types.h>

class FrameSize {
		u16 width;
		u16 height;

	public:
		FrameSize(u16 w, u16 h) : width(w), height(h) {}

		u16 getWidth() const { return width; }
		u16 getHeight() const { return height; }
};
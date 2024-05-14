#pragma once

#include <citro3d.h>

#include "resources/FileIO.h"

class SimpleTexture {
	public:
		SimpleTexture(const char* location);

	protected:
		C3D_Tex* mTexture;
};
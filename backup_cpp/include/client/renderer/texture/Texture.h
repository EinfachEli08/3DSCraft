#pragma once

#include <citro3d.h>
#include <tex3ds.h>

#include "resources/ResourceLocation.h"

class Texture {
	public:
		Texture(ResourceLocation filename, bool vram = true);
		~Texture() { C3D_TexDelete(&mTex); }

		C3D_Tex mTex;
};
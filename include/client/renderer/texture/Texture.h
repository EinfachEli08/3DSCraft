#pragma once

#include <citro3d.h>
#include <tex3ds.h>

#include "resources/ResourceLocation.h"

class Texture {
	public:
		Texture::Texture(ResourceLocation filename, bool vram);
		~Texture() { C3D_TexDelete(&mTexture); }

		C3D_Tex mTexture;
};
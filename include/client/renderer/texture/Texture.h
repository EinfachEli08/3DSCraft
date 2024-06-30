#pragma once

#include <citro3d.h>
#include <tex3ds.h>

#include "client/Exception.h"
#include "resources/ResourceLocation.h"

class Texture {
	public:
		Texture(const ResourceLocation& filename, bool vram = true);
		Texture(GPU_TEXCOLOR format, u16 width, u16 height, bool vram = false);
		~Texture() { C3D_TexDelete(&mTex); }

		u16 getWidth() const { return mTex.width; }
		u16 getHeight() const { return mTex.width; }
		GPU_TEXCOLOR getFormat() const { return mTex.fmt; }

		void checkAllocated();
		void writeToFile(const char* filename);	 // just what you'd expect, its broken.(the output is)

		static u8 getPixelSize(GPU_TEXCOLOR format, u16 width, u16 height);
		static u8 getPixelComponents(GPU_TEXCOLOR format);

		C3D_Tex mTex;
};
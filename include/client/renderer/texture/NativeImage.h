#pragma once

#include <cstdint>
#include <cstdio>

#include "client/Exception.h"
#include "client/renderer/texture/Texture.h"

class NativeImage : Texture {
		u8* mBuffer = nullptr;

		bool isOutsideBounds(int x, int y);
		void setFilter(bool linear, bool mipmap);
		void checkBufferAllocated();

	public:
		NativeImage(GPU_TEXCOLOR format, u16 width, u16 height, u8* pixels = nullptr);
		NativeImage(GPU_TEXCOLOR format, u16 width, u16 height, bool freeMem);
		NativeImage(const ResourceLocation& location);

		void close();

		u32 getPixel(u16 x, u16 y);
		void setPixel(u16 x, u16 y, u32 pixel);

		void setFilter(bool isLinear, bool isMipmap);

		void upload(bool linear, bool wrap, bool mipmapped, bool close);
		void downloadTexture();

		void copyFrom(NativeImage& other);
		void flipY();
		void copyRect(int dstX, int dstY, int srcX, int srcY, int width, int height, bool flipX, bool flipY);

		inline void upload(bool mipmapped, bool close) { upload(false, false, mipmapped, close); }
		inline void upload(bool close) { upload(false, close); }
};
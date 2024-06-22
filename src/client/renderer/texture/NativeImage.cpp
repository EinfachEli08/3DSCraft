#include "client/renderer/texture/NativeImage.h"

#include <tex3ds.h>

#include "util/FileIO.h"
#include "util/math/NumberUtils.h"

NativeImage::NativeImage(GPU_TEXCOLOR format, u16 width, u16 height, u8* pixels) : Texture(format, width, height) {
	mBuffer = pixels;
}

NativeImage::NativeImage(GPU_TEXCOLOR format, u16 width, u16 height, bool freeMem) : Texture(format, width, height) {
	size_t bufferSize = width * height * getPixelSize(format, width, height);

	mBuffer = freeMem ? (u8*)(calloc(bufferSize, sizeof(u8))) : (u8*)(malloc(bufferSize * sizeof(u8)));
}

NativeImage::NativeImage(const ResourceLocation& location) : Texture(location) {
	mBuffer = (u8*)mTex.data;
}

void NativeImage::close() {
	if (mBuffer != nullptr) {
		delete[] mBuffer;
		mBuffer = nullptr;
	}
}
bool NativeImage::isOutsideBounds(int x, int y) {
	return x < 0 || x >= mTex.width || y < 0 || y >= mTex.height;
}
void NativeImage::setFilter(bool linear, bool mipmap) {
	if (linear) {
		C3D_TexSetFilter(&mTex, GPU_LINEAR, GPU_LINEAR);

		if (mipmap)
			C3D_TexSetFilterMipmap(&mTex, GPU_LINEAR);
	} else {
		C3D_TexSetFilter(&mTex, GPU_NEAREST, GPU_NEAREST);

		if (mipmap)
			C3D_TexSetFilterMipmap(&mTex, GPU_NEAREST);
	}
}
void NativeImage::checkBufferAllocated() {
	if (mBuffer == nullptr)
		Crash("Image is not allocated");
}
u32 NativeImage::getPixel(u16 x, u16 y) {
	checkBufferAllocated();

	u32 pixel = 0;

	switch (mTex.fmt) {
		case GPU_RGBA8: {
			u32* pixels32 = reinterpret_cast<u32*>(mBuffer);
			pixel		  = pixels32[y * mTex.width + x];
			break;
		}
		case GPU_RGBA4: {
			u16* pixels16	= reinterpret_cast<u16*>(mBuffer);
			u16 packedPixel = pixels16[y * mTex.width + x];
			u8 r			= (packedPixel & 0xF) * 0x11;
			u8 g			= ((packedPixel >> 4) & 0xF) * 0x11;
			u8 b			= ((packedPixel >> 8) & 0xF) * 0x11;
			u8 a			= ((packedPixel >> 12) & 0xF) * 0x11;
			pixel			= (r << 24) | (g << 16) | (b << 8) | a;
			break;
		}
		case GPU_ETC1: {
			// ETC1 doesn't support direct pixel access like RGBA formats
			Crash("Cannot directly get pixel from ETC1 format");
			break;
		}
		// Add cases for other formats as needed
		default:
			Crash("Unsupported texture format %i", mTex.fmt);
			break;
	}

	return pixel;
}

void NativeImage::setPixel(u16 x, u16 y, u32 pixel) {
	checkBufferAllocated();

	switch (mTex.fmt) {
		case GPU_RGBA8: {
			u32* pixels32				 = reinterpret_cast<u32*>(mBuffer);
			pixels32[y * mTex.width + x] = pixel;
			break;
		}
		case GPU_RGBA4: {
			u16* pixels16	= reinterpret_cast<u16*>(mBuffer);
			u16 packedPixel = ((pixel >> 28) & 0xF) << 12 | ((pixel >> 20) & 0xF) << 8 | ((pixel >> 12) & 0xF) << 4 | ((pixel >> 4) & 0xF);
			pixels16[y * mTex.width + x] = packedPixel;
			break;
		}
		case GPU_ETC1: {
			// ETC1 doesn't support direct pixel setting
			Crash("Cannot directly set pixel for ETC1 format");
			break;
		}
		// Add cases for other formats as needed
		default:
			Crash("Unsupported texture format %i", mTex.fmt);
			break;
	}
}
void NativeImage::upload(bool linear, bool wrap, bool mipmapped, bool close) {
	checkBufferAllocated();
	setFilter(linear, mipmapped);

	C3D_TexUpload(&mTex, (void*)mBuffer);
	if (wrap)
		C3D_TexSetWrap(&mTex, GPU_CLAMP_TO_EDGE, GPU_CLAMP_TO_EDGE);

	if (close) {
		this->close();
	}
}
void NativeImage::downloadTexture() {
	checkBufferAllocated();
	memcpy(mBuffer, mTex.data, mTex.size);
}
void NativeImage::copyFrom(NativeImage& other) {
	if (other.getFormat() != mTex.fmt) {
		Crash("Image formats don't match.");
	}

	checkBufferAllocated();
	other.checkBufferAllocated();

	int components = getPixelComponents(mTex.fmt);
	int copySize   = MIN(mTex.size, other.mTex.size);

	if (getWidth() == other.getWidth()) {  // by row
		memcpy(mBuffer, other.mBuffer, copySize);
	} else {  // by pixel
		int minWidth  = MIN(getWidth(), other.getWidth());
		int minHeight = MIN(getHeight(), other.getHeight());

		for (int y = 0; y < minHeight; ++y) {
			int srcOffset = y * other.getWidth() * components;
			int dstOffset = y * getWidth() * components;
			memcpy(mBuffer + dstOffset, other.mBuffer + srcOffset, minWidth * components);
		}
	}
}
void NativeImage::flipY() {
	checkBufferAllocated();

	int components = getPixelComponents(mTex.fmt);
	int rowSize	   = getWidth() * components;

	u8* tempRow = new u8[rowSize];

	for (int y = 0; y < getHeight() / 2; ++y) {
		int topOffset	 = y * rowSize;
		int bottomOffset = (getHeight() - 1 - y) * rowSize;

		// Copy top row to temporary buffer
		memcpy(tempRow, mBuffer + topOffset, rowSize);

		// Copy bottom row to top row
		memcpy(mBuffer + topOffset, mBuffer + bottomOffset, rowSize);

		// Copy temporary buffer to bottom row
		memcpy(mBuffer + bottomOffset, tempRow, rowSize);
	}

	delete[] tempRow;
}
void NativeImage::copyRect(int dstX, int dstY, int srcX, int srcY, int width, int height, bool flipX, bool flipY) {
	checkBufferAllocated();

	int components = getPixelComponents(mTex.fmt);
	int srcRowSize = getWidth() * components;
	int dstRowSize = getWidth() * components;

	for (int y = 0; y < height; ++y) {
		for (int x = 0; x < width; ++x) {
			int srcPixelX = flipX ? (srcX + width - 1 - x) : (srcX + x);
			int srcPixelY = flipY ? (srcY + height - 1 - y) : (srcY + y);

			int dstPixelX = dstX + x;
			int dstPixelY = dstY + y;

			u32 pixel = getPixel(srcPixelX, srcPixelY);

			setPixel(dstPixelX, dstPixelY, pixel);
		}
	}
}
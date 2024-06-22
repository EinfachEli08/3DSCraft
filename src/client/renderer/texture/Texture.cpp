#include "client/renderer/texture/Texture.h"

#include <3ds.h>
#include <malloc.h>
#include <png.h>
#include <stdio.h>
#include <stdlib.h>

#include "client/Exception.h"
#include "resources/ResourceLocation.h"
#include "util/FileIO.h"
#include "util/Paths.h"

u8 Texture::getPixelSize(GPU_TEXCOLOR format, u16 width, u16 height) {
	switch (format) {
		case GPU_RGBA4:
			return 2;
			break;
		case GPU_RGBA8:
			return 4;
			break;
	}
	if (format == GPU_ETC1 || format == GPU_ETC1A4)
		return ((width / 4) * (height / 4)) * 8;

	Break("Pixel size unknown for format: %i", format);
	return 8;
}
u8 Texture::getPixelComponents(GPU_TEXCOLOR format) {
	switch (format) {
		case GPU_RGBA8:
			return 4;
		case GPU_RGBA4:
			return 4;
		case GPU_ETC1:
			return 3;
		default:
			Crash("Unsupported texture format %i", format);
			return 4;
	}
}
Texture::Texture(const ResourceLocation& location, bool vram) {
	FILE* f = FileIO::getFile(location, "rb");

	Tex3DS_Texture t3x = Tex3DS_TextureImportStdio(f, &mTex, nullptr, vram);

	if (!&mTex)
		Crash("TextureLoadException: Unable to load texture: %s", location.getPath());

	Tex3DS_TextureFree(t3x);
	fclose(f);
}
Texture::Texture(GPU_TEXCOLOR format, u16 width, u16 height, bool vram) {
	size_t size = width * height * getPixelSize(format, width, height);

	u8* data = new u8[size];
	memset(data, 0xFF, size);

	C3D_TexInitParams params = {width, height, 4, format, GPU_TEX_2D, vram};

	if (!C3D_TexInitWithParams(&mTex, nullptr, params)) {
		Crash("Failed to allocate texture.\nvram: %i, format: %i, dimensions:%ix%i, size:%i", vram, format, width, height, size);
		delete[] data;
		return;
	}

	C3D_TexLoadImage(&mTex, data, GPU_TEXFACE_2D, 0);

	delete[] data;
}
void Texture::checkAllocated() {
	if (mTex.data == nullptr)
		Crash("Image is not allocated");
}
void Texture::writeToFile(const char* filename) {
	checkAllocated();

	FILE* file = FileIO::getFile(filename);

	// Initialize libpng structures
	png_structp png = png_create_write_struct(PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
	if (!png) {
		printf("Failed to initialize libpng\n");
		fclose(file);
		return;
	}

	png_infop info = png_create_info_struct(png);
	if (!info) {
		printf("Failed to create libpng info structure\n");
		png_destroy_write_struct(&png, NULL);
		fclose(file);
		return;
	}

	if (setjmp(png_jmpbuf(png))) {
		Crash("Error during PNG creation");
		png_destroy_write_struct(&png, &info);
		fclose(file);
		return;
	}

	png_init_io(png, file);

	// Set PNG info
	png_set_IHDR(png, info, mTex.width, mTex.height, 8, PNG_COLOR_TYPE_RGBA, PNG_INTERLACE_NONE, PNG_COMPRESSION_TYPE_DEFAULT,
				 PNG_FILTER_TYPE_DEFAULT);

	// Write image data
	u8* buffer = (u8*)mTex.data;
	png_bytep row_pointers[mTex.height];
	for (int y = 0; y < mTex.height; ++y) {
		row_pointers[y] = (png_bytep)&buffer[y * mTex.width * 4];
	}
	png_set_rows(png, info, row_pointers);
	png_write_png(png, info, PNG_TRANSFORM_IDENTITY, NULL);

	png_destroy_write_struct(&png, &info);
	fclose(file);

	Break("Image saved as PNG: %s", filename);
}
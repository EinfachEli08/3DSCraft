#include "client/renderer/texture/Texture.h"

#include <3ds.h>
#include <lodepng/lodepng.h>
#include <malloc.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "client/Exception.h"

uint32_t hash(char* str) {
	unsigned long hash = 5381;
	int c;
	while ((c = *str++))
		hash = ((hash << 5) + hash) + c; /* hash * 33 + c */
	return hash;
}

Texture::Texture(C3D_Tex* result, char* filename) {
	uint32_t* image	   = NULL;
	unsigned int width = 255, height = 255;
	uint32_t error = lodepng_decode32_file((uint8_t**)&image, &width, &height, filename);
	if (error == 0 && image != NULL) {
		uint32_t* imgInLinRam = (uint32_t*)linearAlloc(width * height * sizeof(uint32_t));

		if (width < 64 || height < 64) {
			for (unsigned int j = 0; j < height; j++)
				for (int i = 0; i < width; i++) {
					image[i + j * width] = __builtin_bswap32(image[i + j * width]);
				}
		} else {
			for (int i = 0; i < width * height; i++) {
				/*uint8_t r = ((image[i] << 0) & 0xff) >> 4;
				uint8_t g = ((image[i] << 8) & 0xff) >> 4;
				uint8_t b = ((image[i] << 16) & 0xff) >> 4;
				uint8_t a = ((image[i] << 24) & 0xff) >> 4;
				imgInLinRam[i] = r | (g << 4) | (b << 8) | (a << 12);*/
				imgInLinRam[i] = __builtin_bswap32(image[i]);
			}
		}

		C3D_TexInitVRAM(result, width, height, GPU_RGBA8);

		if (width < 64 || height < 64)
			tileImage32(image, (u8*)imgInLinRam, width, height);

		GSPGPU_FlushDataCache(imgInLinRam, width * height * sizeof(uint32_t));
		free(image);

		if (width < 64 || height < 64) {
			C3D_SyncTextureCopy(imgInLinRam, 0, (u32*)result->data, 0, width * height * sizeof(uint32_t), 8);
		} else {
			C3D_SyncDisplayTransfer((uint32_t*)imgInLinRam, GX_BUFFER_DIM(width, height), (u32*)result->data, GX_BUFFER_DIM(width, height),
									cTextureFlags);
		}

		linearFree(imgInLinRam);
	} else {
		Crash("Failed to load texture %s\n", filename);
	}
}

// TextureFunction

// Grabbed from Citra Emulator (citra/src/video_core/utils.h)
static inline u32 morton_interleave(u32 x, u32 y) {
	u32 i = (x & 7) | ((y & 7) << 8);  // ---- -210
	i	  = (i ^ (i << 2)) & 0x1313;   // ---2 --10
	i	  = (i ^ (i << 1)) & 0x1515;   // ---2 -1-0
	i	  = (i | (i >> 7)) & 0x3F;
	return i;
}
// Grabbed from Citra Emulator (citra/src/video_core/utils.h)
static inline u32 get_morton_offset(u32 x, u32 y, u32 bytes_per_pixel) {
	u32 i				= morton_interleave(x, y);
	unsigned int offset = (x & ~7) * 8;
	return (i + offset) * bytes_per_pixel;
}

// from sf2d https://github.com/xerpi/sf2dlib/blob/effe77ea81d21c26bad457d4f5ed8bb16ce7b753/libsf2d/source/sf2d_texture.c
void tileImage32(u32* src, u8* dst, s32 sizex, s32 sizey) {
	for (int j = 0; j < sizey; j++) {
		for (int i = 0; i < sizex; i++) {
			u32 coarse_y   = j & ~7;
			u32 dst_offset = get_morton_offset(i, j, 4) + coarse_y * sizex * 4;

			u32 v					  = src[i + (sizey - 1 - j) * sizex];
			*(u32*)(dst + dst_offset) = v;
		}
	}
}
void tileImage8(u8* src, u8* dst, s32 size) {
	for (int j = 0; j < size; j++) {
		for (int i = 0; i < size; i++) {
			u32 coarse_y   = j & ~7;
			u32 dst_offset = get_morton_offset(i, j, 1) + coarse_y * size;

			u8 v				= src[i + (size - 1 - j) * size];
			*(dst + dst_offset) = v;
		}
	}
}
void downscaleImage(u8* data, int size) {
	int i, j;
	for (j = 0; j < size; j++) {
		for (i = 0; i < size; i++) {
			const u32 offset  = (i + j * size) * 4;
			const u32 offset2 = (i * 2 + j * 2 * size * 2) * 4;
			data[offset + 0]  = (data[offset2 + 0 + 0] + data[offset2 + 4 + 0] + data[offset2 + size * 4 * 2 + 0] +
								 data[offset2 + (size * 2 + 1) * 4 + 0]) /
							   4;
			data[offset + 1] = (data[offset2 + 0 + 1] + data[offset2 + 4 + 1] + data[offset2 + size * 4 * 2 + 1] +
								data[offset2 + (size * 2 + 1) * 4 + 1]) /
							   4;
			data[offset + 2] = (data[offset2 + 0 + 2] + data[offset2 + 4 + 2] + data[offset2 + size * 4 * 2 + 2] +
								data[offset2 + (size * 2 + 1) * 4 + 2]) /
							   4;
			data[offset + 3] = (data[offset2 + 0 + 3] + data[offset2 + 4 + 3] + data[offset2 + size * 4 * 2 + 3] +
								data[offset2 + (size * 2 + 1) * 4 + 3]) /
							   4;
		}
	}
}

// Helper function for loading a texture from a t3x file
// from examples
static bool loadTextureFromFile(C3D_Tex* tex, C3D_TexCube* cube, const char* path) {
	FILE* f = fopen(path, "rb");
	if (!f)
		return false;

	Tex3DS_Texture t3x = Tex3DS_TextureImportStdio(f, tex, cube, false);
	fclose(f);
	if (!t3x)
		return false;

	// Delete the t3x object since we don't need it
	Tex3DS_TextureFree(t3x);
	return true;
}
// From grapefruid.c atari800-3ds
static u32 next_power_of_two(u32 v) {
	v--;
	v |= v >> 1;
	v |= v >> 2;
	v |= v >> 4;
	v |= v >> 8;
	v |= v >> 16;
	return v + 1;
}
// TileSet

TileSet::TileSet(char** files, int numFiles, u8 texTileSize) {
	int locX = 0;
	int locY = 0;

	// printf("TileSetInit %s\n", files);
	// const int texSizeMax = 4 * cTileSetSize * cTileSetSize;
	tileNum = next_power_of_two(numFiles * numFiles);
	tiles	= (Tile*)linearAlloc(texTileSize * texTileSize);

	int filei	   = 0;
	char* filename = files[filei];
	int c		   = 0;
	while (filename && c < tileNum && filei < numFiles) {
		unsigned int w, h;
		loadTextureFromFile(&mTexture, NULL, filename);
		if (w == texTileSize && h == texTileSize && mTexture.data != nullptr) {
			Texture::Tile* icon = &tiles[c];
			icon->textureHash	= hash(filename);
			icon->u				= 256 * locX;
			icon->v				= 256 * locY;

			// printf("Stiched texture %s(hash: %u) at %d, %d\n", filename, icon->textureHash, locX, locY);

			locX += texTileSize;
			if (locX == cTileSetSize) {
				locY += texTileSize;
				locX = 0;
			}
		} else {
			printf("Image size(%d, %d) doesn't match or ptr null(internal error)\n'", w, h);
		}
		filename = files[++filei];
		c++;
	}

	C3D_TexSetFilter(&mTexture, GPU_NEAREST, GPU_NEAREST);

	int size		 = cTileSetSize / 2;
	ptrdiff_t offset = cTileSetSize * cTileSetSize;

	u32* tiledImage = (u32*)linearAlloc(size * size * 4);

	for (int i = 0; i < cMipmapLevels; i++) {
		downscaleImage((u8*)mTexture.data, size);

		tileImage32((u32*)mTexture.data, (u8*)tiledImage, size, size);

		GSPGPU_FlushDataCache(tiledImage, size * size * 4);

		GX_RequestDma(tiledImage, (u32*)mTexture.data + offset, size * size * 4);
		gspWaitForAnyEvent();

		offset += size * size;
		size /= 2;
	}

	linearFree(tiledImage);
}

Texture::Tile TileSet::getIcon(char* filename) {
	u32 h = hash(filename);
	for (u8 i = 0; i < tileNum; i++) {
		if (h == tiles[i].textureHash) {
			return tiles[i];
		}
	}
	return tiles[0];  // TODO: invalid texture?
}
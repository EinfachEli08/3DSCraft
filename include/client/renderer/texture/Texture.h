#pragma once

#include <citro3d.h>
#include <tex3ds.h>

#include "resources/ResourceLocation.h"

class Texture {
	public:
		Texture(ResourceLocation filename, bool vram = true);
		~Texture() { C3D_TexDelete(&mTex); }

		C3D_Tex mTex;

		class Atlas {
			public:
				Atlas(ResourceLocation filename, bool vram = true);
				~Atlas() { Tex3DS_TextureFree(mAtlas); }

				void getUV(u16 index, u16* out) {
					const Tex3DS_SubTexture* sub = Tex3DS_GetSubTexture(mAtlas, index);
					out[1]						 = sub->left / sub->width;
					out[2]						 = sub->top / sub->height;
					u32 o						 = sub->left;
					u32 s						 = sub->left / sub->width;
					printf("%i%i", o, s);
				}

				const Tex3DS_Texture mAtlas;
				const u8 mTileSize;
		};
};
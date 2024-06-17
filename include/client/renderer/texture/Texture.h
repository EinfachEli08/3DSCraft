#pragma once

#include <citro3d.h>
#include <tex3ds.h>

#include "client/Exception.h"
#include "resources/ResourceLocation.h"

class Texture {
	public:
		Texture(ResourceLocation filename, bool vram = true);
		~Texture() { C3D_TexDelete(&mTex); }

		C3D_Tex mTex;

		class Atlas {
			public:
				Atlas(ResourceLocation filename, bool vram = true, u8 tileSize = 0);
				~Atlas() { Tex3DS_TextureFree(mAtlas); }

				void getUV(u16 index, u16* out);

			private:
				Tex3DS_Texture mAtlas;
				C3D_Tex mTex;
				const u8 mTileSize;
		};
};
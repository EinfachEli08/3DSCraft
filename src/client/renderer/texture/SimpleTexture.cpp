#include "client/renderer/texture/SimpleTexture.h"

#include <tex3ds.h>

SimpleTexture::SimpleTexture(const char* location) {
	FILE* f			   = File::getFile(location, "rb");
	Tex3DS_Texture t3x = Tex3DS_TextureImportStdio(f, mTexture, 0, false);
	fclose(f);
	free(t3x);
}
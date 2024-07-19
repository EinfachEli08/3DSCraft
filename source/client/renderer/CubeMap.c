#include "client/renderer/CubeMap.h"

#include "client/Crash.h"
#include "client/renderer/VertexFmt.h"
#include "client/renderer/texture/TextureMap.h"
#include "util/math/NumberUtils.h"

#include <stdio.h>

#define rotationSpeed 1

int projUniform;
static CubeMapVertex* cubeVBO;
static C3D_Tex cubeTextures[6];
static C3D_TexCube cubemap;

extern const WorldVertex cube_sides_lut[6 * 6];

void CubeMap_Init(int projUniform_, const char* filename) {
	projUniform = projUniform_;
	cubeVBO		= linearAlloc(sizeof(cube_sides_lut));

	char outName[50];
	for (u8 i = 0; i < 6; i++) {
		snprintf(outName, sizeof(outName), "romfs:/assets/textures/%s_%d.png", filename, i);
		Texture_Load(&cubeTextures[i], outName);
		C3D_TexSetFilter(&cubeTextures[i], GPU_LINEAR, GPU_LINEAR);
		C3D_TexSetWrap(&cubeTextures[i], GPU_CLAMP_TO_EDGE, GPU_CLAMP_TO_EDGE);
	}
}

void CubeMap_Deinit() {
	linearFree(cubeVBO);
	for (u8 i = 0; i < 6; i++) {
		C3D_TexDelete(&cubeTextures[i]);
	}
}

void CubeMap_Draw(C3D_Mtx* projection) {
	if (cubeVBO == NULL) {
		Crash("CubeMap not initialized!");
		return;
	}

	C3D_Mtx model, modelView;
	Mtx_Identity(&model);
	Mtx_RotateY(&model, rotationSpeed, true);
	Mtx_Multiply(&modelView, projection, &model);

	C3D_FVUnifMtx4x4(GPU_VERTEX_SHADER, projUniform, &modelView);

	memcpy(cubeVBO, cube_sides_lut, sizeof(cube_sides_lut));

	C3D_AlphaTest(true, GPU_GEQUAL, 255);

	C3D_BufInfo* bufInfo = C3D_GetBufInfo();
	BufInfo_Init(bufInfo);
	BufInfo_Add(bufInfo, cubeVBO, sizeof(CubeMapVertex), 1, 0x10);

	for (u8 i = 0; i < 6; i++) {
		C3D_TexBind(i, &cubeTextures[i]);
		C3D_DrawArrays(GPU_TRIANGLES, i * 6, 6);
	}

	C3D_AlphaTest(false, GPU_GREATER, 0);
}

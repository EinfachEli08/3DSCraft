#include "client/model/Cube.h"

#include "client/Crash.h"
#include "client/renderer/texture/TextureMap.h"

extern const WorldVertex cube_sides_lut[CUBE_VERTICE_NUM];

static WorldVertex* vbo;

Cube* Cube_Init(CubeModel* in, C3D_Tex** textureRef) {
	if (!in) {
		Crash("Passed unbaked CubeModel is NULL!");
		return NULL;
	}

	Cube* cube = linearAlloc(sizeof(Cube));
	if (!cube) {
		Crash("Could not allocate memory for cube");
		return NULL;
	}

	if (!vbo)
		vbo = linearAlloc(sizeof(cube_sides_lut));

	// Crash("Cube Data: Size VBO: %d, Size LUT: %d, Expected Size: %d, sizeof WorldVertex: %d", sizeof(cube->vertices),
	// sizeof(cube_sides_lut),
	//	  CUBE_VERTICE_NUM * sizeof(WorldVertex), sizeof(WorldVertex));

	cube->textureRef = textureRef;

	for (u8 face = 0; face < 6; ++face) {
		int lutStartIndex = face * 6;

		s16 uv[4];
		memcpy(uv, in->faceUV[face], sizeof(uv));

		float3 min = in->from;
		float3 max = in->to;

		// Apply transformations for each vertex in the LUT
		for (int i = 0; i < 6; ++i) {
			int idx				= lutStartIndex + i;
			WorldVertex* vertex = &cube->vertices[idx];

			float lutPosition[3];
			lutPosition[0] = cube_sides_lut[idx].pos[0];
			lutPosition[1] = cube_sides_lut[idx].pos[1];
			lutPosition[2] = cube_sides_lut[idx].pos[2];

			vertex->pos[0] = min.x + (max.x - min.x) * lutPosition[0];
			vertex->pos[1] = min.y + (max.y - min.y) * lutPosition[1];
			vertex->pos[2] = min.z + (max.z - min.z) * lutPosition[2];

#define toTexCrd(x, tw) (s16)(((float)(x) / (float)(tw)) * (float)(1 << 15))

			vertex->uv[0] = toTexCrd(uv[cube_sides_lut[idx].uv[0]], cube->textureRef[face]->width);
			vertex->uv[1] = toTexCrd(uv[cube_sides_lut[idx].uv[1]], cube->textureRef[face]->width);

			// (for simplicity, using white here)
			vertex->rgb[0] = 255;
			vertex->rgb[1] = 255;
			vertex->rgb[2] = 255;

			vertex->fxyz[0] = 0;
			vertex->fxyz[1] = 0;
			vertex->fxyz[2] = 0;
		}
	}
	C3D_Mtx matrix;
	Mtx_Translate(&matrix, in->position.x, in->position.y, in->position.z, true);
	Mtx_RotateX(&matrix, in->rotation.x, true);
	Mtx_RotateY(&matrix, in->rotation.y, true);
	Mtx_RotateZ(&matrix, in->rotation.z, true);

	cube->localMatrix = matrix;

	return cube;
}

void Cube_Deinit(Cube* cube) {
	if (cube == NULL)
		return;

	linearFree(cube->vertices);
	linearFree(cube);
}

void Cube_Update(Cube* cube, int shaderUniform, C3D_Mtx* matrix) {
	if (cube == NULL) {
		Crash("Cube is NULL!");
		return;
	} else if (cube->textureRef == NULL) {
		Crash("Cube Texture Reference is NULL!");
		return;
	}

	if (!vbo)
		vbo = linearAlloc(sizeof(cube_sides_lut));

	GSPGPU_FlushDataCache(vbo, sizeof(cube_sides_lut));

	memcpy(vbo, cube->vertices, sizeof(cube_sides_lut));

	C3D_Mtx outMatrix;
	Mtx_Identity(&outMatrix);
	Mtx_Multiply(&outMatrix, matrix, &cube->localMatrix);

	C3D_FVUnifMtx4x4(GPU_VERTEX_SHADER, shaderUniform, &outMatrix);

	C3D_BufInfo* bufInfo = C3D_GetBufInfo();
	BufInfo_Init(bufInfo);
	BufInfo_Add(bufInfo, vbo, sizeof(WorldVertex), 4, 0x3210);

	for (u8 i = 0; i < 6; i++) {
		C3D_TexBind(0, cube->textureRef[cube->textureIdx[i]]);
		C3D_DrawArrays(GPU_TRIANGLES, i * 6, 6);
	}
}
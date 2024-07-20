#include "client/model/Cube.h"

#include "client/Crash.h"
#include "client/renderer/texture/TextureMap.h"

extern const WorldVertex cube_sides_lut[CUBE_VERTICE_NUM];

#define toTexCrd(x, tw) (s16)(((float)(x) / (float)(tw)) * (float)(1 << 15))

Cube* Cube_Init(CubeModel* in) {
	if (!in) {
		Crash("Passed unbaked CubeModel is NULL!");
		return NULL;
	}

	Cube* cube = linearAlloc(sizeof(Cube));
	if (!cube) {
		Crash("Could not allocate memory for cube");
		return NULL;
	}

	cube->vbo = linearAlloc(CUBE_VERTICE_NUM * sizeof(WorldVertex));
	if (!cube->vbo) {
		linearFree(cube);
		Crash("Could not allocate memory for cube VBO");
		return NULL;
	}

	C3D_Tex textures[in->texNum];
	for (u8 i = 0; i < in->texNum; ++i) {
		if (in->texPath[i] == NULL)
			continue;

		Texture_Load(&textures[i], in->texPath[i]);
		if (&textures[i] == NULL) {
			Crash("Cube Texture No. %d failed to initialize:\n %s", i, in->texPath[i]);
			return NULL;
		}
		C3D_TexSetFilter(&textures[i], GPU_NEAREST, GPU_NEAREST);
		C3D_TexSetWrap(&textures[i], GPU_CLAMP_TO_EDGE, GPU_CLAMP_TO_EDGE);
	}
	for (u8 i = 0; i < 6; ++i) {
		memcpy(&cube->textures[i], &textures[in->faceTexIdx[i]], sizeof(C3D_Tex));

		if (cube->textures[i] == NULL)
			Crash("Cube Texture for face %d invalid,\n which has %d textures in total.\n Textures: %08x, %08x, %08x, %08x, %08x, %08x", i,
				  in->texNum, textures[0], textures[1], textures[2], textures[3], textures[4], textures[5]);
	}

	for (u8 face = 0; face < 6; ++face) {
		int lutStartIndex = face * 6;

		s16 uv[4];
		memcpy(uv, in->faceUV[face], sizeof(uv));

		float3 min = in->from;
		float3 max = in->to;

		// Apply transformations for each vertex in the LUT
		for (int i = 0; i < 6; ++i) {
			int idx				= lutStartIndex + i;
			WorldVertex* vertex = &cube->vbo[idx];

			float lutPosition[3];
			lutPosition[0] = cube_sides_lut[idx].pos[0];
			lutPosition[1] = cube_sides_lut[idx].pos[1];
			lutPosition[2] = cube_sides_lut[idx].pos[2];

			vertex->pos[0] = min.x + (max.x - min.x) * lutPosition[0];
			vertex->pos[1] = min.y + (max.y - min.y) * lutPosition[1];
			vertex->pos[2] = min.z + (max.z - min.z) * lutPosition[2];

			vertex->uv[0] = toTexCrd(uv[cube_sides_lut[idx].uv[0]], cube->textures[face]->width);
			vertex->uv[1] = toTexCrd(uv[cube_sides_lut[idx].uv[1]], cube->textures[face]->width);

			/*// (for simplicity, using white here)
			vertex->rgb[0] = 255;
			vertex->rgb[1] = 255;
			vertex->rgb[2] = 255;*/
		}
	}
	C3D_Mtx matrix;
	Mtx_Translate(&matrix, in->position.x, in->position.y, in->position.z, true);
	Mtx_RotateX(&matrix, in->rotation.x, true);
	Mtx_RotateY(&matrix, in->rotation.y, true);
	Mtx_RotateZ(&matrix, in->rotation.z, true);

	cube->matrix = matrix;

	return cube;
}

void Cube_Deinit(Cube* cube) {
	if (cube == NULL)
		return;

	linearFree(cube->vbo);
	for (u8 i = 0; i < 6; ++i) {
		if (cube->textures[i]) {
			C3D_TexDelete(cube->textures[i]);
			linearFree(cube->textures[i]);
		}
	}
	linearFree(cube);
}

void Cube_Draw(Cube* cube) {
	if (cube == NULL) {
		Crash("Cube is NULL!");
		return;
	} /* else if (cube->vbo == NULL) {
		 Crash("Cube VBO is NULL!");
		 return;
	 } else if (cube->textures == NULL) {
		 Crash("Cube Textures are NULL!");
		 return;
	 } else if (cube->textures[0]->data == NULL) {
		 Crash("Cube TextureData 0 is NULL!\n %08x, %08x, %08x, %08x, %08x", cube->textures[0]->data, cube->textures[1]->data,
			   cube->textures[2]->data, cube->textures[3]->data, cube->textures[4]->data);
	 }*/

	C3D_BufInfo* bufInfo = C3D_GetBufInfo();
	BufInfo_Init(bufInfo);
	BufInfo_Add(bufInfo, cube->vbo, sizeof(WorldVertex), 4, 0x3210);

	for (u8 i = 0; i < 6; i++) {
		C3D_TexBind(0, cube->textures[i]);
		C3D_DrawArrays(GPU_TRIANGLES, i * 6, 6);
	}
}
#pragma once

#include <citro3d.h>

#include "client/model/VertexFmt.h"
#include "util/math/VecMath.h"

#define CUBE_VERTICE_NUM 6 * 6

typedef struct {
	float3 from;
	float3 to;
	s16 faceUV[6][4];  // pixel based coordinates
	u8 faceTexIdx[6];  // index of texture per face
	u8 texNum;		   // number of textures
	const char* texPath[6];
	C3D_Mtx* matrix;
} CubeModel;

typedef struct {
	WorldVertex* vbo;
	C3D_Mtx matrix;
	C3D_Tex* textures[6];
} Cube;

inline void Cube_Clean(CubeModel* model) {
	if (model == NULL)
		return;

	for (u8 i = 0; i < model->texNum; ++i) {
		if (model->texPath[i]) {
			free((void*)model->texPath[i]);
		}
	}

	linearFree(model);
}

Cube* Cube_Init(CubeModel* in);

void Cube_Draw(Cube* cube);

void Cube_Deinit(Cube* cube);
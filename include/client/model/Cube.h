#pragma once

#include <citro3d.h>
#include <stdlib.h>

#include "client/model/VertexFmt.h"
#include "util/math/VecMath.h"

#define CUBE_VERTICE_NUM 6 * 6

typedef struct {
	float3 from, to;
	s16 faceUV[6][4];  // pixel based coordinates
	u8 faceTexIdx[6];  // index of texture per face
	u8 texNum;		   // number of textures
	const char* texPath[6];
	float3 position, rotation;
} CubeModel;

typedef struct {
	WorldVertex* vbo;
	C3D_Mtx localMatrix;
	C3D_Tex* textures[6];
} Cube;

static inline CubeModel** cubeModels(CubeModel* models, u8 numModels) {
	CubeModel** pointers = (CubeModel**)malloc(sizeof(CubeModel*) * numModels);
	if (!pointers) {
		return NULL;  // Memory allocation failed
	}

	for (u8 i = 0; i < numModels; ++i) {
		pointers[i] = &models[i];
	}

	return pointers;
}
static inline void Cube_Clean(CubeModel* model) {
	if (model == NULL)
		return;
	// fuck this, memory leak time.
	// file paths
	linearFree(model);
}

Cube* Cube_Init(CubeModel* in);

void Cube_Draw(Cube* cube, int shaderUniform, C3D_Mtx* matrix);

void Cube_Deinit(Cube* cube);
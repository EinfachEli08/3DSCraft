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
	float3 position, rotation;
} CubeModel;

typedef struct {
	WorldVertex vertices[CUBE_VERTICE_NUM];
	u8 textureIdx[6];
	C3D_Mtx localMatrix;
	C3D_Tex** textureRef;
} Cube;

static inline void Cube_Clean(CubeModel* model) {
	if (model == NULL)
		return;
	// fuck this, memory leak time.
	// file paths
	linearFree(model);
}

Cube* Cube_Init(CubeModel* in, C3D_Tex** textureRef);

void Cube_Update(Cube* cube, int shaderUniform, C3D_Mtx* matrix);

void Cube_Deinit(Cube* cube);
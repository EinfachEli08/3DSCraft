#pragma once

#include <citro3d.h>
#include <stdlib.h>

#include "client/model/VertexFmt.h"
#include "util/math/VecMath.h"

#define CUBE_VERTICE_NUM 6 * 6

typedef struct {
	s16 from, to;
    s16 dimensions[2];
	s16 faceUV[6][4];  // pixel based coordinates
	s16 position[3], rotation[3];
} CubeModel;

typedef struct {
	WorldVertex vertices[CUBE_VERTICE_NUM];
	C3D_Mtx localMatrix;
} Cube;

static inline void Cube_Clean(CubeModel* model) {
	if (model == NULL)
		return;

	linearFree(model);
}

Cube* Cube_Init(CubeModel* in);

void Cube_Draw(Cube* cube, int shaderUniform, C3D_Mtx* matrix);

void Cube_Deinit(Cube* cube);
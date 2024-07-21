#pragma once

#include "client/model/Cube.h"

typedef struct {
	C3D_Mtx rootMatrix;

	u8 cubeNum;
	Cube* cubes;
} Model;

typedef struct {
	C3D_Mtx* rootMatrix;

	u8 cubeNum;
	CubeModel** cubes;
} ModelUnbaked;

static inline void Model_Clean(ModelUnbaked* model) {
	if (model == NULL)
		return;

	for (u8 i = 0; i < model->cubeNum; ++i)
		Cube_Clean(model->cubes[i]);

	linearFree(model->cubes);
	linearFree(model);
}

Model* Model_Init(ModelUnbaked* model);

void Model_Draw(Model* model, int shaderUniform);

void Model_Deinit(Model* model);
#pragma once

#include "client/model/Cube.h"

typedef struct {
	C3D_Mtx rootMatrix;

	u8 cubeNum;
	Cube* cubes;

	int shaderUniform;
} Model;

typedef struct {
	C3D_Mtx* rootMatrix;

	u8 cubeNum;
	CubeModel* cubes;

	int shaderUniform;
} ModelUnbaked;

inline void Model_Clean(ModelUnbaked* model) {
	if (model == NULL)
		return;

	for (u8 i = 0; i < model->cubeNum; ++i)
		Cube_Clean(&model->cubes[i]);

	linearFree(model->cubes);
	linearFree(model);
}

Model* Model_Init(ModelUnbaked* model);

void Model_Draw(Model* model);

void Model_DeInit(Model* model);
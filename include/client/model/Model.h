#pragma once

#include "client/model/Cube.h"

typedef struct {
	C3D_Mtx rootMatrix;

	C3D_Tex** textures;

	u8 cubeNum;
	Cube* cubes;
} Model;

typedef struct {
	C3D_Mtx* rootMatrix;

	const char** texPath;

	u8 cubeNum;
	CubeModel** cubes;
} ModelUnbaked;

Model* Model_Init(ModelUnbaked* model);

static inline Model* createModel(C3D_Mtx* matrix, CubeModel* models, u8 numModels, const char** strings) {
	CubeModel** pointers = (CubeModel**)malloc(sizeof(CubeModel*) * numModels);
	if (!pointers)
		return NULL;

	for (u8 i = 0; i < numModels; ++i) {
		pointers[i] = &models[i];
	}

	ModelUnbaked preModel = { .rootMatrix = matrix, .cubeNum = numModels, .cubes = pointers, .texPath = strings };

	return Model_Init(&preModel);
}

static inline void Model_Clean(ModelUnbaked* model) {
	if (model == NULL)
		return;

	for (u8 i = 0; i < model->cubeNum; ++i)
		Cube_Clean(model->cubes[i]);

	linearFree(model->cubes);
	linearFree(model);
}

void Model_Draw(Model* model, int shaderUniform, C3D_Mtx* matrix);

void Model_Deinit(Model* model);

void Model_SetMutual(Model* model);

void Model_SetPos(Model* model, float3 pos);

void Model_SetRotY(Model* model, float rotY);
void Model_SetRot(Model* model, float3 rot);
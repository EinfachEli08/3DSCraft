#pragma once

#include "client/model/Cube.h"

typedef struct {
	C3D_Mtx rootMatrix;

    u8 cubeNum;
	Cube* cubes;

    C3D_Tex* texture;
} Model;

typedef struct {
	C3D_Mtx* rootMatrix;

	u8 cubeNum;
	CubeModel** cubes;

    C3D_Tex* texture;
} ModelUnbaked;

Model* Model_Init(ModelUnbaked* model);

static inline Model* createModel(C3D_Mtx* matrix, CubeModel* models, u8 numModels, C3D_Tex* texture) {
	CubeModel** pointers = (CubeModel**)malloc(sizeof(CubeModel*) * numModels);
	if (!pointers)
		return NULL;

	for (u8 i = 0; i < numModels; ++i) {
		pointers[i] = &models[i];
	}

	ModelUnbaked preModel = { .rootMatrix = matrix, .cubeNum = numModels, .cubes = pointers, .texture = texture };

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
static inline void Model_SetTexture(Model* m, C3D_Tex* tex){
    m->texture = tex;
}

void Model_Draw(Model* model, int shaderUniform, C3D_Mtx* matrix);

void Model_Deinit(Model* model);

void Model_SetMutual(Model* model);

void Model_SetPos(Model* model, float3 pos);

void Model_SetRotY(Model* model, float rotY);
void Model_SetRot(Model* model, float3 rot);

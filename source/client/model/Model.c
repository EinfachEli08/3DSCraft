#include "client/model/Model.h"

#include "client/Camera.h"
#include "client/Crash.h"

extern Camera camera;

Model* Model_Init(ModelUnbaked* in) {
	Model* model = linearAlloc(sizeof(Model));
	if (!model) {
		Crash("Could not allocate memory for model");
		return NULL;
	}

	model->cubeNum = in->cubeNum;

	model->rootMatrix = *in->rootMatrix;

	model->cubes = linearAlloc(model->cubeNum * sizeof(Cube));
	if (!model->cubes) {
		linearFree(model);
		Crash("Could not allocate memory for model cubes\n Amount: %d", model->cubeNum);
		return NULL;
	}

	for (u8 i = 0; i < model->cubeNum; ++i) {
		model->cubes[i] = *Cube_Init(&in->cubes[i]);
	}
}

void Model_Deinit(Model* model) {
	if (model == NULL)
		return;

	for (u8 i = 0; i < model->cubeNum; ++i) {
		Cube_Deinit(&model->cubes[i]);
	}

	linearFree(model->cubes);
	linearFree(model);
}

void Model_Draw(Model* model) {
	C3D_FVUnifMtx4x4(GPU_VERTEX_SHADER, model->shaderUniform, &model->rootMatrix);

	for (u8 i = 0; i < model->cubeNum; ++i) {
		Cube_Draw(&model->cubes[i]);
	}
}
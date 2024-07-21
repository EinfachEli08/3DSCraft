#include "client/model/Model.h"

#include "client/Camera.h"
#include "client/Crash.h"

extern Camera camera;

Model* Model_Init(ModelUnbaked* in) {
	if (!in) {
		Crash("Passed unbaked Model is NULL!");
		return NULL;
	} else if (!in->cubes) {
		Crash("Passed cubes for unbaked Model is NULL");
		return NULL;
	}

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
		if (!in->cubes[i]) {
			Crash(
				"Cube %d for Model is NULL!\n Total: %d\n in->cubes: %08x\n in->cubes[]: %08x, %08x, %08x, %08x, %08x, %08x, %08x, %08x, "
				"%08x, %08x ... ",
				i, model->cubeNum, in->cubes, in->cubes[0], in->cubes[1], in->cubes[2], in->cubes[3], in->cubes[4], in->cubes[5],
				in->cubes[6], in->cubes[7], in->cubes[8], in->cubes[9]);
		}
		model->cubes[i] = *Cube_Init(in->cubes[i]);
	}

	return model;
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

void Model_Draw(Model* model, int projectionUniform) {
	C3D_AlphaTest(true, GPU_GREATER, 0);

	for (u8 i = 0; i < model->cubeNum; ++i) {
		Cube* cube = &model->cubes[i];
		Cube_Draw(cube, projectionUniform, &model->rootMatrix);
	}

	C3D_AlphaTest(false, GPU_GREATER, 0);
}
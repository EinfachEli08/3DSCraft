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

	Model_Clean(in);

	if (!model) {
		Crash("Model generation returns NULL.");
		return NULL;
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

void Model_Draw(Model* model, int projectionUniform, C3D_Mtx* projection) {
	C3D_AlphaTest(true, GPU_GREATER, 0);

	C3D_Mtx matrix;
	Mtx_Multiply(&matrix, projection, &model->rootMatrix);

	for (u8 i = 0; i < model->cubeNum; ++i) {
		Cube* cube = &model->cubes[i];
		Cube_Draw(cube, projectionUniform, &matrix);
	}

	C3D_AlphaTest(false, GPU_GREATER, 0);
}

void Model_SetMutual(Model* m) {
	Mtx_Zeros(&m->rootMatrix);
	Mtx_Identity(&m->rootMatrix);
}

void Model_SetPos(Model* m, float3 pos) {
	Mtx_Translate(&m->rootMatrix, pos.x, pos.y, pos.z, true);
}

void Model_SetRot(Model* m, float3 rot) {
	Mtx_RotateX(&m->rootMatrix, rot.x, true);
	Mtx_RotateX(&m->rootMatrix, rot.y, true);
	Mtx_RotateX(&m->rootMatrix, rot.z, true);
}
void Model_SetRotY(Model* m, float rotY) {
	Mtx_RotateY(&m->rootMatrix, rotY, true);
}
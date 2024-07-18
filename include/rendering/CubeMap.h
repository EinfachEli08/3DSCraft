#pragma once

#include <citro3d.h>

void CubeMap_Init(int projUniform, const char* basename);
void CubeMap_Deinit();

void CubeMap_Draw(C3D_Mtx* projection);
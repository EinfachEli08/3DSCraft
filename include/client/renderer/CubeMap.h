#pragma once

#include <citro3d.h>

<<<<<<< HEAD
#include "util/math/VecMath.h"

void CubeMap_Init(int projUniform_);
void CubeMap_Set(const char* basename, float3 rotation);
void CubeMap_Deinit();

void CubeMap_Draw(C3D_Mtx* projection, float3 rotationOffset);
=======
void CubeMap_Init(int projUniform, const char* basename);
void CubeMap_Deinit();

void CubeMap_Draw(C3D_Mtx* projection);
>>>>>>> b97ec91dfe0d860b0d6909faad8fb6af6140bb36

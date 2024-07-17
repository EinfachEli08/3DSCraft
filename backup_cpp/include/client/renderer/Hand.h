#pragma once

#include <citro3d.h>

#include "client/player/Player.h"

void Hand_Init();
void Hand_Deinit();

void Hand_Draw(int projUniform, C3D_Mtx* projection, ItemStack stack, Player* player);

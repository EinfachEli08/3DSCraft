#pragma once

#include "world/World.h"

#include "util/VecMath.h"

typedef struct {
		int x, y, z;
		float distSqr;
		Direction::e direction;
} Raycast_Result;

bool Raycast_Cast(World* world, Vector3f inpos, Vector3f raydir, Raycast_Result* out);
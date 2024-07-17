#pragma once

#include "world/World.h"

#include "util/math/Vector3.h"

typedef struct {
		int x, y, z;
		float distSqr;
		Direction::_ direction;
} Raycast_Result;

bool Raycast_Cast(World* world, Vector3<float> inpos, Vector3<float> raydir, Raycast_Result* out);

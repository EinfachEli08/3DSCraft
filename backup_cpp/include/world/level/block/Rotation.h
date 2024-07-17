#pragma once

#include <array>

#include "core/Direction.h"

namespace Rotation {

enum _ : int {
	NONE,
	CLOCKWISE_90,
	CLOCKWISE_180,
	COUNTERCLOCKWISE_90
};

static Rotation::_ getRotated(Rotation::_ base, Rotation::_ rotation);
static Rotation::_ getRandom();
static int rotate(Rotation::_ rotation, int value, int modulus);
static std::array<Rotation::_, 4> getShuffled();

}  // namespace Rotation

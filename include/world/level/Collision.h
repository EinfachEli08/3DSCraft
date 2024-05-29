#pragma once

#include <stdbool.h>

#include "util/Vector3.h"

struct Box {
		Vector3<float> min, max;
		Box(const Vector3<float> _min, const Vector3<float> _max) : min(_min), max(_max) {}
};

inline Box Box_Create(float x, float y, float z, float w, float h, float d) {
	return Box(Vector3<float>(x, y, z), Vector3<float>(x + w, y + h, z + d));
}
inline bool Box_Contains(Box box, float x, float y, float z) {
	return box.min.x <= x && box.min.y <= y && box.min.z <= z && box.max.x > x && box.max.y > y && box.max.z > z;
}

bool Collision_BoxIntersect(Box a, Box b, int ignore_faces, Vector3<float>* ncoll,	// normal of collision.
							float* dcoll,											// depth of intersection.
							int* fcoll);											// face intersected.

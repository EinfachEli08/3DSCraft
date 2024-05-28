#pragma once

#include <math.h>

#include "util/NumberUtils.h"

union Vector3f {
		float v[3];
		struct {
				float x, y, z;
		};
		Vector3f(float x, float y, float z) : x(x), y(y), z(z) {}

		Vector3f operator+(const Vector3f& other) { return Vector3f{x + other.x, y + other.y, z + other.z}; }
		Vector3f operator-(const Vector3f& other) { return Vector3f{x - other.x, y - other.y, z - other.z}; }
		Vector3f operator*(const float& multiplier) { return Vector3f{x * multiplier, y * multiplier, z * multiplier}; }
};

inline Vector3f f3_new(float x, float y, float z) {
	return Vector3f{x, y, z};
}

inline Vector3f f3_add(Vector3f a, Vector3f b) {
	return f3_new(a.x + b.x, a.y + b.y, a.z + b.z);
}
inline Vector3f f3_sub(Vector3f a, Vector3f b) {
	return f3_new(a.x - b.x, a.y - b.y, a.z - b.z);
}
inline Vector3f f3_scl(Vector3f a, float b) {
	return f3_new(a.x * b, a.y * b, a.z * b);
}

inline float f3_dot(Vector3f a, Vector3f b) {
	return a.x * b.x + a.y * b.y + a.z * b.z;
}
inline Vector3f f3_crs(Vector3f a, Vector3f b) {
	return f3_new(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
}

inline float f3_mag(Vector3f vec) {
	return sqrtf(f3_dot(vec, vec));
}
inline float f3_magSqr(Vector3f vec) {
	return f3_dot(vec, vec);
}
inline Vector3f f3_nrm(Vector3f vec) {
	float m = f3_mag(vec);
	return f3_new(vec.x / m, vec.y / m, vec.z / m);
}

inline float f3_dst(Vector3f a, Vector3f b) {
	return f3_mag(f3_sub(a, b));
}

inline Vector3f f3_min(Vector3f a, Vector3f b) {
	return f3_new(MIN(a.x, b.x), MIN(a.y, b.y), MIN(a.z, b.z));
}
inline Vector3f f3_max(Vector3f a, Vector3f b) {
	return f3_new(MAX(a.x, b.x), MAX(a.y, b.y), MAX(a.z, b.z));
}

inline Vector3f f3_clamp(Vector3f a, Vector3f min, Vector3f max) {
	return f3_min(f3_max(a, min), max);
}

inline Vector3f f3_neg(Vector3f vec) {
	return f3_new(-vec.x, -vec.y, -vec.z);
}

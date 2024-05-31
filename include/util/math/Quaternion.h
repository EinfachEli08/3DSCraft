#pragma once

#include "util/math/Vector3.h"
#include <3ds/types.h>
#include <cstdio>

class Quaternion {
		float x, y, z, w = 0;

	public:
		Quaternion(float x, float y, float z, float w) : x(x), y(y), z(z), w(w) {}
		Quaternion(Vector3<float> axis, float angle, bool degrees);
		Quaternion(float xAngle, float yAngle, float zAngle, bool degrees);

		bool operator==(const Quaternion& other) {
			if (this == &other)
				return true;

			return x == other.x && y == other.y && z == other.z && w == other.w;
		}
		Quaternion operator*(float n) { return Quaternion(x * n, y * n, z * n, w * n); }
		Quaternion operator*(const Quaternion& other) {
			float f	 = x;
			float f1 = y;
			float f2 = z;
			float f3 = w;
			float f4 = other.x;
			float f5 = other.y;
			float f6 = other.z;
			float f7 = other.w;
			float _x = f3 * f4 + f * f7 + f1 * f6 - f2 * f5;
			float _y = f3 * f5 - f * f6 + f1 * f7 + f2 * f4;
			float _z = f3 * f6 + f * f5 - f1 * f4 + f2 * f7;
			float _w = f3 * f7 - f * f4 - f1 * f5 - f2 * f6;
			return Quaternion(_x, _y, _z, _w);
		}
		void conjugate();
		void set(float x, float y, float z, float w);
		void normalize();

		const char* toString();

		float getX() const { return x; }
		float getY() const { return y; }
		float getZ() const { return z; }
		float getW() const { return w; }
};
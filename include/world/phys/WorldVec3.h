#pragma once

#include "util/Vector3.h"

class Vec3 {
	public:
		Vector3<double> vec;

		Vec3(double x, double y, double z) : vec(x, y, z) {}
		Vec3(Vector3<double> vec) : vec(vec) {}
		Vec3(Vector3<float> vec) : vec(vec) {}

		static Vec3 atLowerCornerWithOffset(const Vector3<int>& vec, double offX, double offY, double offZ) {
			return Vec3((double)vec.x + offX, (double)vec.y + offY, (double)vec.z + offZ);
		}
		static Vec3 atCenterOf(const Vector3<int>& vec) { return atLowerCornerWithOffset(vec, 0.50, 0.50, 0.50); }
		static Vec3 atBottomCenterOf(const Vector3<int>& vec) { return atLowerCornerWithOffset(vec, 0.50, 0.00, 0.50); }
		static Vec3 atFromBottomCenterOf(const Vector3<int>& vec, double y) { return atLowerCornerWithOffset(vec, 0.50, y, 0.50); }
};
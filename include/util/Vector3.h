#pragma once

#include <3ds/types.h>
#include <math.h>

#include "util/NumberUtils.h"

template <typename T>
union Vector3 {
		T v[3];
		struct {
				T x, y, z;
		};
		Vector3(T x, T y, T z) : x(x), y(y), z(z) {}
		template <typename U>
		Vector3(const Vector3<U>& vec) : x(vec.x), y(vec.y), z(vec.z) {}

		template <typename U>
		Vector3 operator+(const Vector3<U>& other) const {
			return Vector3{x + other.x, y + other.y, z + other.z};
		}

		template <typename U>
		Vector3 operator-(const Vector3<U>& other) const {
			return Vector3{x - other.x, y - other.y, z - other.z};
		}
		Vector3 operator*(T multiplier) const { return Vector3{x * multiplier, y * multiplier, z * multiplier}; }

		template <typename U>
		T dot(const Vector3<U>& other) const {
			return x * other.x + y * other.y + z * other.z;
		}
		T dot() const { return x * x + y * y + z * z; }

		template <typename U>
		Vector3 cross(const Vector3<U>& other) const {
			return Vector3{y * other.z - z * other.y, z * other.x - x * other.z, x * other.y - y * other.x};
		}

		T magnitude() const { return sqrt(x * x + y * y + z * z); }

		T magnitudeSqr() const { return x * x + y * y + z * z; }

		Vector3 normal() const {
			T m = magnitude();
			return Vector3{x / m, y / m, z / m};
		}
		Vector3 clamp(const Vector3& min, const Vector3& max) const { return Vector3{this->min(max).max(min)}; }

		Vector3 min(const Vector3& other) const { return Vector3{MIN(x, other.x), MIN(y, other.y), MIN(z, other.z)}; }

		Vector3 max(const Vector3& other) const { return Vector3{MAX(x, other.x), MAX(y, other.y), MAX(z, other.z)}; }

		Vector3 negate() const { return Vector3{-x, -y, -z}; }
};

/*
inline Vector3<float> Vector3<float>(float x, float y, float z) {
	return Vector3<float>{x, y, z};
}

inline Vector3<float> f3_add(Vector3<float> a, Vector3<float> b) {
	return Vector3<float>(a.x + b.x, a.y + b.y, a.z + b.z);
}
inline Vector3<float> f3_sub(Vector3<float> a, Vector3<float> b) {
	return Vector3<float>(a.x - b.x, a.y - b.y, a.z - b.z);
}
inline Vector3<float> f3_scl(Vector3<float> a, float b) {
	return Vector3<float>(a.x * b, a.y * b, a.z * b);
}

inline float f3_dot(Vector3<float> a, Vector3<float> b) {
	return a.x * b.x + a.y * b.y + a.z * b.z;
}
inline Vector3<float> f3_crs(Vector3<float> a, Vector3<float> b) {
	return Vector3<float>(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
}

inline float f3_mag(Vector3<float> vec) {
	return sqrtf(f3_dot(vec, vec));
}
inline float f3_magSqr(Vector3<float> vec) {
	return f3_dot(vec, vec);
}
inline Vector3<float> f3_nrm(Vector3<float> vec) {
	float m = f3_mag(vec);
	return Vector3<float>(vec.x / m, vec.y / m, vec.z / m);
}

inline float f3_dst(Vector3<float> a, Vector3<float> b) {
	return f3_mag(f3_sub(a, b));
}

inline Vector3<float> f3_min(Vector3<float> a, Vector3<float> b) {
	return Vector3<float>(MIN(a.x, b.x), MIN(a.y, b.y), MIN(a.z, b.z));
}
inline Vector3<float> f3_max(Vector3<float> a, Vector3<float> b) {
	return Vector3<float>(MAX(a.x, b.x), MAX(a.y, b.y), MAX(a.z, b.z));
}

inline Vector3<float> f3_clamp(Vector3<float> a, Vector3<float> min, Vector3<float> max) {
	return f3_min(f3_max(a, min), max);
}

inline Vector3<float> f3_neg(Vector3<float> vec) {
	return Vector3<float>(-vec.x, -vec.y, -vec.z);
}
*/
#pragma once

#include "util/math/NumberUtils.h"
#include <3ds/types.h>

template <typename T>
union Vector3 {
		T v[3];
		struct {
				T x, y, z;
		};

		constexpr Vector3() : x(0), y(0), z(0) {}
		constexpr Vector3(T x, T y, T z) : x(x), y(y), z(z) {}
		template <typename U>
		constexpr Vector3(const Vector3<U>& vec) : x(vec.x), y(vec.y), z(vec.z) {}

		template <typename U>
		constexpr Vector3 operator+(const Vector3<U>& other) const {
			return Vector3{ x + other.x, y + other.y, z + other.z };
		}

		template <typename U>
		constexpr Vector3 operator-(const Vector3<U>& other) const {
			return Vector3{ x - other.x, y - other.y, z - other.z };
		}

		constexpr Vector3 operator+(T addition) const { return Vector3{ x + addition, y + addition, z + addition }; }

		constexpr Vector3 operator-(T difference) const { return Vector3{ x - difference, y - difference, z - difference }; }

		constexpr Vector3 operator*(T multiplier) const { return Vector3{ x * multiplier, y * multiplier, z * multiplier }; }

		constexpr Vector3 operator+(T* addition) const { return Vector3{ x + addition[0], y + addition[1], z + addition[2] }; }

		constexpr Vector3 operator-(T* difference) const { return Vector3{ x - difference[0], y - difference[1], z - difference[2] }; }

		template <typename U>
		constexpr T dot(const Vector3<U>& other) const {
			return x * other.x + y * other.y + z * other.z;
		}

		constexpr T dot() const { return x * x + y * y + z * z; }

		template <typename U>
		constexpr Vector3 cross(const Vector3<U>& other) const {
			return Vector3{ y * other.z - z * other.y, z * other.x - x * other.z, x * other.y - y * other.x };
		}

		constexpr T magnitude() const { return sqrt(x * x + y * y + z * z); }

		constexpr T magnitudeSqr() const { return x * x + y * y + z * z; }

		constexpr Vector3 normal() const {
			T m = magnitude();
			return Vector3{ x / m, y / m, z / m };
		}

		constexpr Vector3 clamp(const Vector3& min, const Vector3& max) const { return Vector3{ this->min(max).max(min) }; }

		constexpr Vector3 min(const Vector3& other) const { return Vector3{ MIN(x, other.x), MIN(y, other.y), MIN(z, other.z) }; }

		constexpr Vector3 max(const Vector3& other) const { return Vector3{ MAX(x, other.x), MAX(y, other.y), MAX(z, other.z) }; }

		constexpr Vector3 negate() const { return Vector3{ -x, -y, -z }; }

		constexpr const T* toArray() const {
			static constexpr T arr[3] = { x, y, z };
			return arr;
		}
};

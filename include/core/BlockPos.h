#pragma once

#include "core/Direction.h"
#include "util/NumberUtils.h"
#include "util/Vector3.h"
#include "world/level/block/Rotation.h"
#include "world/phys/WorldVec3.h"

class BlockPos {
		Vector3<int> pos;

	public:
		BlockPos(int x, int y, int z) : pos(x, y, z) {}
		BlockPos(double x, double y, double z) : pos(x, y, z) {}
		BlockPos(const Vector3<int>& position) : pos(position) {}
		BlockPos(const Vector3<double>& position) : pos(position) {}
		BlockPos(long packPos);

		static const BlockPos* ZERO;

		static int getX(long packPos);
		static int getY(long packPos);
		static int getZ(long packPos);
		static long offset(long packOffset, Direction::_ dir);
		static long offset(long packOffset, int offX, int offY, int offZ);
		static long toLong(int x, int y, int z);
		static long getFlatIndex(long packPos);
		static BlockPos containing(double x, double y, double z);
		static BlockPos containing(const Vector3<double>& position);
		static BlockPos* withinManhattan(BlockPos blockPos, int distanceX, int distanceY, int distanceZ);

		template <typename Predicate>
		static BlockPos* findClosestMatch(BlockPos p_121931_, int p_121932_, int p_121933_, Predicate p_121934);

		long toLong();
		int getX();
		int getY();
		int getZ();

		template <typename T>
		Vector3<T> getCenter();
		BlockPos offset(int x, int y, int z);
		BlockPos offset(Vector3<int> vec);
		BlockPos subtract(Vector3<int> amount);
		BlockPos multiply(int amount);
		BlockPos above();
		BlockPos above(int offset);
		BlockPos below();
		BlockPos below(int offset);
		BlockPos north();
		BlockPos north(int offset);
		BlockPos south();
		BlockPos south(int offset);
		BlockPos west();
		BlockPos west(int offset);
		BlockPos east();
		BlockPos east(int offset);

		BlockPos relative(Direction::_ dir);
		BlockPos relative(Direction::_ dir, int offset);
		BlockPos relative(Direction::Axis::_ rot, int offset);
		BlockPos rotate(Rotation::_ rot);
		BlockPos cross(Vector3<int> vec);
		BlockPos atY(int y);

		BlockPos set(int x, int y, int z);
		BlockPos set(double x, double y, double z);
		BlockPos set(const Vector3<int>& vec);
		BlockPos setWithOffset(const Vector3<int> vec, Direction::_ dir);
		BlockPos setWithOffset(const Vector3<int> vec, int offX, int offY, int offZ);
		BlockPos setWithOffset(const Vector3<int> vec, const Vector3<int> offVec);
		BlockPos move(Direction::_ dir);
		BlockPos move(Direction::_ dir, int n);
		BlockPos move(int x, int y, int z);
		BlockPos move(const Vector3<int>& vec);
		BlockPos clamp(Direction::Axis::_ axis, int min, int max);
		BlockPos setX(int n);
		BlockPos setY(int n);
		BlockPos setZ(int n);
};
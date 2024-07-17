#pragma once

#include "world/phys/Vec3.h"

class HitResult {
	protected:
		const Vec3 mLocation;
		HitResult(Vec3 loc) : mLocation(loc) {}

	public:
		static enum Type {
			MISS,
			BLOCK,
			ENTITY,
			COUNT
		};
		// double distanceTo(Entity entity){}
		Vec3 getLocation() const { return mLocation; }
		virtual Type getType() = 0;
};

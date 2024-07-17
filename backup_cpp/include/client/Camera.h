#pragma once

#include "client/player/Player.h"

#include <stdbool.h>

#include <citro3d.h>

enum FrustumPlanes {
	Frustum_Near = 0,
	Frustum_Right,
	Frustum_Left,
	Frustum_Top,
	Frustum_Bottom,
	Frustum_Far,

	FrustumPlanes_Count
};

enum FrustumCorners {
	Frustum_NearBottomLeft = 0,
	Frustum_NearBottomRight,
	Frustum_NearTopLeft,
	Frustum_NearTopRight,
	Frustum_FarBottomLeft,
	Frustum_FarBottomRight,
	Frustum_FarTopLeft,
	Frustum_FarTopRight,

	FrustumCorners_Count
};

class Camera {
		C3D_FVec frustumPlanes[FrustumPlanes_Count];
		Vector3<float> frustumCorners[FrustumCorners_Count];

		float near, far, fov;

	public:
		Camera();

		void update(Player* player, float iod);

		bool isPointVisible(C3D_FVec point);
		bool isAABBVisible(C3D_FVec origin, C3D_FVec size);

		C3D_Mtx projection, view, vp;
};

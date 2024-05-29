#include "client/Camera.h"

#include "client/gui/DebugUI.h"
#include "world/level/chunk/Chunk.h"

void Camera_Init(Camera* cam) {
	Mtx_Identity(&cam->view);

	cam->fov  = C3D_AngleFromDegrees(60.f);
	cam->near = 0.2f, cam->far = 8.f * CHUNK_SIZE;

	Mtx_PerspTilt(&cam->projection, cam->fov, ((400.f) / (240.f)), cam->near, cam->far, false);
}

void Camera_Update(Camera* cam, Player* player, float iod) {
	float fov = cam->fov + C3D_AngleFromDegrees(12.f) * player->fovAdd;
	Mtx_PerspStereoTilt(&cam->projection, fov, ((400.f) / (240.f)), cam->near, cam->far, iod, 1.f, false);

	Vector3<float> playerHead = Vector3<float>(
		player->position.x, player->position.y + PLAYER_EYEHEIGHT + sinf(player->bobbing) * 0.1f + player->crouchAdd, player->position.z);

	Mtx_Identity(&cam->view);
	Mtx_RotateX(&cam->view, -player->pitch, true);
	Mtx_RotateY(&cam->view, -player->yaw, true);
	Mtx_Translate(&cam->view, -playerHead.x, -playerHead.y, -playerHead.z, true);

	C3D_Mtx vp;
	Mtx_Multiply(&vp, &cam->projection, &cam->view);
	Mtx_Copy(&cam->vp, &vp);

	C3D_FVec rowX = vp.r[0];
	C3D_FVec rowY = vp.r[1];
	C3D_FVec rowZ = vp.r[2];
	C3D_FVec rowW = vp.r[3];

	cam->frustumPlanes[Frustum_Near]   = FVec4_Normalize(FVec4_Subtract(rowW, rowZ));
	cam->frustumPlanes[Frustum_Right]  = FVec4_Normalize(FVec4_Add(rowW, rowX));
	cam->frustumPlanes[Frustum_Left]   = FVec4_Normalize(FVec4_Subtract(rowW, rowX));
	cam->frustumPlanes[Frustum_Top]	   = FVec4_Normalize(FVec4_Add(rowW, rowY));
	cam->frustumPlanes[Frustum_Bottom] = FVec4_Normalize(FVec4_Subtract(rowW, rowY));
	cam->frustumPlanes[Frustum_Far]	   = FVec4_Normalize(FVec4_Add(rowW, rowZ));

	Vector3<float> forward = player->view;
	Vector3<float> right   = Vector3<float>(0, 1, 0).cross(Vector3<float>(sinf(player->yaw), 0.f, cosf(player->yaw)));
	Vector3<float> up	   = forward.cross(right);

	float ar = 400.f / 240.f;

	float tan2halffov = 2.f * tanf(cam->fov / 2.f);

	float hNear = tan2halffov * cam->near;
	float wNear = hNear * ar;

	float hFar = tan2halffov * cam->far;
	float wFar = hFar * ar;

	Vector3<float> cNear = playerHead + forward * cam->near;
	Vector3<float> cFar	 = playerHead + forward * cam->far;

	cam->frustumCorners[Frustum_NearBottomLeft]	 = cNear - up * (hNear * 0.5f) - right * (wNear * 0.5f);
	cam->frustumCorners[Frustum_NearBottomRight] = cNear - up * (hNear * 0.5f) + right * (wNear * 0.5f);
	cam->frustumCorners[Frustum_NearTopLeft]	 = cNear + up * (hNear * 0.5f) - right * (wNear * 0.5f);
	cam->frustumCorners[Frustum_NearTopRight]	 = cNear + up * (hNear * 0.5f) + right * (wNear * 0.5f);
	cam->frustumCorners[Frustum_FarBottomLeft]	 = cFar - up * (hFar * 0.5f) - right * (wFar * 0.5f);
	cam->frustumCorners[Frustum_FarBottomRight]	 = cFar - up * (hFar * 0.5f) + right * (wFar * 0.5f);
	cam->frustumCorners[Frustum_FarTopLeft]		 = cFar + up * (hFar * 0.5f) - right * (wFar * 0.5f);
	cam->frustumCorners[Frustum_FarTopRight]	 = cFar + up * (hFar * 0.5f) + right * (wFar * 0.5f);
}

bool Camera_IsPointVisible(Camera* cam, C3D_FVec point) {
	point.w = 1.f;
	for (int i = 0; i < FrustumPlanes_Count; i++)
		if (FVec4_Dot(point, cam->frustumPlanes[i]) < 0.f)
			return false;
	return true;
}

bool Camera_IsAABBVisible(Camera* cam, C3D_FVec orgin, C3D_FVec size) {
	Vector3<float> min = Vector3<float>(orgin.x, orgin.y, orgin.z);
	Vector3<float> max = Vector3<float>(orgin.x + size.x, orgin.y + size.y, orgin.z + size.z);
	for (int i = 0; i < 6; i++) {
		int out = 0;
		out += ((FVec4_Dot(cam->frustumPlanes[i], FVec4_New(min.x, min.y, min.z, 1.0f)) < 0.0));
		out += ((FVec4_Dot(cam->frustumPlanes[i], FVec4_New(max.x, min.y, min.z, 1.0f)) < 0.0));
		out += ((FVec4_Dot(cam->frustumPlanes[i], FVec4_New(min.x, max.y, min.z, 1.0f)) < 0.0));
		out += ((FVec4_Dot(cam->frustumPlanes[i], FVec4_New(max.x, max.y, min.z, 1.0f)) < 0.0));
		out += ((FVec4_Dot(cam->frustumPlanes[i], FVec4_New(min.x, min.y, max.z, 1.0f)) < 0.0));
		out += ((FVec4_Dot(cam->frustumPlanes[i], FVec4_New(max.x, min.y, max.z, 1.0f)) < 0.0));
		out += ((FVec4_Dot(cam->frustumPlanes[i], FVec4_New(min.x, max.y, max.z, 1.0f)) < 0.0));
		out += ((FVec4_Dot(cam->frustumPlanes[i], FVec4_New(max.x, max.y, max.z, 1.0f)) < 0.0));
		if (out == 8)
			return false;
	}

	// http://iquilezles.org/www/articles/frustumcorrect/frustumcorrect.htm
	int out;
	out = 0;
	for (int i = 0; i < 8; i++)
		out += ((cam->frustumCorners[i].x > max.x));
	if (out == 8)
		return false;
	out = 0;
	for (int i = 0; i < 8; i++)
		out += ((cam->frustumCorners[i].x < min.x));
	if (out == 8)
		return false;
	out = 0;
	for (int i = 0; i < 8; i++)
		out += ((cam->frustumCorners[i].y > max.y));
	if (out == 8)
		return false;
	out = 0;
	for (int i = 0; i < 8; i++)
		out += ((cam->frustumCorners[i].y < min.y));
	if (out == 8)
		return false;
	out = 0;
	for (int i = 0; i < 8; i++)
		out += ((cam->frustumCorners[i].z > max.z));
	if (out == 8)
		return false;
	out = 0;
	for (int i = 0; i < 8; i++)
		out += ((cam->frustumCorners[i].z < min.z));
	if (out == 8)
		return false;

	return true;
}
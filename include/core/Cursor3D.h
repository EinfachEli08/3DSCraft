#pragma once

#include <3ds/types.h>

class Cursor3D {
		const int mOriginX, mOriginY, mOriginZ, mWidth, mHeight, mDepth, mEnd;
		int mIndex, mX, mY, mZ;

	public:
		enum Type {
			Type_Inside,
			Type_Face,
			Type_Edge,
			Type_Corner,
			Count
		};

		Cursor3D(int originX, int originY, int originZ, int width, int height, int depth)
			: mOriginX(originX),
			  mOriginY(originY),
			  mOriginZ(originZ),
			  mWidth(width - originX + 1),
			  mHeight(height - originY + 1),
			  mDepth(depth - originZ + 1),
			  mEnd(width * height * depth) {}

		bool advance();
		int nextX();
		int nextY();
		int nextZ();
		int getNextType();
};
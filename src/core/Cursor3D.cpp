#include "core/Cursor3D.h"

bool Cursor3D::advance() {
	if (mIndex == mEnd)
		return false;

	mX	  = mIndex % mWidth;
	int i = mIndex / mWidth;
	mY	  = i % mHeight;
	mZ	  = i / mHeight;
	++mIndex;
	return true;
}
int Cursor3D::nextX() {
	return mOriginX + mX;
}
int Cursor3D::nextY() {
	return mOriginY + mY;
}
int Cursor3D::nextZ() {
	return mOriginZ + mZ;
}
int Cursor3D::getNextType() {
	int i = 0;

	if ((mX == 0 || mX == mWidth - 1) || (mY == 0 || mY == mHeight - 1) || (mZ == 0 || mZ == mDepth - 1))
		++i;

	return i;
}
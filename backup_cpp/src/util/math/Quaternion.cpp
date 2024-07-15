#include "util/math/Quaternion.h"

#include "util/math/NumberUtils.h"

Quaternion::Quaternion(Vector3<float> axis, float angle, bool degrees) {
	if (degrees)
		angle *= ((float)M_PI / 100.F);

	float f = sin(angle / 2.0F);
	x		= axis.x * f;
	y		= axis.y * f;
	z		= axis.z * f;
	w		= cos(angle / 2.0F);
}
Quaternion::Quaternion(float xAngle, float yAngle, float zAngle, bool degrees) {
	if (degrees) {
		float mod = (float)M_PI / 180.F;
		xAngle *= mod;
		yAngle *= mod;
		zAngle *= mod;
	}
	float f	 = sin(0.5F * xAngle);
	float f1 = cos(0.5F * xAngle);
	float f2 = sin(0.5F * yAngle);
	float f3 = cos(0.5F * yAngle);
	float f4 = sin(0.5F * zAngle);
	float f5 = cos(0.5F * zAngle);
	x		 = f * f3 * f5 + f1 * f2 * f4;
	y		 = f1 * f2 * f5 - f * f3 * f4;
	z		 = f * f2 * f5 + f1 * f3 * f4;
	w		 = f1 * f3 * f5 - f * f2 * f4;
}
void Quaternion::conjugate() {
	x = -x;
	y = -y;
	z = -z;
}
void Quaternion::set(float _x, float _y, float _z, float _w) {
	x = _x;
	y = _y;
	z = _z;
	w = _w;
}
void Quaternion::normalize() {
	float f = x * x + y * y * z * z + w * w;
	if (f > 1.0E-6F) {
		float f1 = sqrt(f);
		x *= f1;
		y *= f1;
		z *= f1;
		w *= f1;
	} else {
		x = 0.0F;
		y = 0.0F;
		z = 0.0F;
		w = 0.0F;
	}
}
const char* Quaternion::toString() {
	static char buffer[100];
	sprintf(buffer, "Quaternion[%.2f + %.2fi + %.2fj + %.2fk]", getW(), getX(), getY(), getZ());
	return buffer;
}
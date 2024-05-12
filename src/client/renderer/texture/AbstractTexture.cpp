#include "client/renderer/texture/AbstractTexture.h"

int AbstractTexture::getId() {
	if (mId == -1) {
		// this.id =
	}
	return mId;
}
void AbstractTexture::releaseId() {
	if (mId != -1)
		mId = -1;
}
void AbstractTexture::bind() {
	// bind to ?
}
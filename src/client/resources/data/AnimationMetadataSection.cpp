#include "client/resources/data/AnimationMetadataSection.h"

#include "client/Exception.h"
#include "util/math/NumberUtils.h"

static bool isMultipleOf(int valMul, int val) {
	return valMul / val * val == valMul;
}

Pair<u8, u8> AnimationMetadataSection::getSpriteSize(u8 width, u8 height) {
	Pair<u8, u8> pair = getFrameSize(width, height);

	if (!isMultipleOf(width, pair.first) || !isMultipleOf(height, pair.second))
		Crash("Image size %u, %u is not multiple of frame size %u, %u", width, height, pair.first, pair.second);

	return pair;
}

Pair<u8, u8> AnimationMetadataSection::getFrameSize(u8 defWidth, u8 defHeight) {
	if (mFrameWidth != -1)
		return mFrameHeight != -1 ? Pair<u8, u8>(mFrameWidth, mFrameHeight) : Pair<u8, u8>(mFrameWidth, defHeight);
	else if (mFrameHeight != -1)
		return Pair<u8, u8>(defWidth, mFrameHeight);

	int i = MIN(defWidth, defHeight);
	return Pair<u8, u8>(static_cast<u8>(i), static_cast<u8>(i));
}

u8 AnimationMetadataSection::getFrameTimeSingle(u8 frame) const {
	AnimationFrame animationFrame = getAnimationFrame(frame);
	return animationFrame.hasNoTime() ? mFrameTime : animationFrame.getFrameTime();
}

vector<int> AnimationMetadataSection::getFrameIndexSet() {
	vector<int> set;

	for (const AnimationFrame& animationFrame : mAnimationFrames) {
		set.push_back(animationFrame.getFrameIndex());
	}

	return set;
}

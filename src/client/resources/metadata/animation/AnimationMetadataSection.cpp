#include "client/resources/metadata/animation/AnimationMetadataSection.h"

#include "client/Exception.h"
#include "util/math/NumberUtils.h"

static bool isMultipleOf(int valMul, int val) {
	return valMul / val * val == valMul;
}

Pair<u16, u16> AnimationMetadataSection::getSpriteSize(u16 width, u16 height) {
	Pair<u16, u16> pair = getFrameSize(width, height);

	if (!isMultipleOf(width, pair.first) || !isMultipleOf(height, pair.second))
		Crash("Image size %u, %u is not multiple of frame size %u, %u", width, height, pair.first, pair.second);

	return pair;
}

Pair<u16, u16> AnimationMetadataSection::getFrameSize(u16 defWidth, u16 defHeight) {
	if (mFrameWidth != -1)
		return mFrameHeight != -1 ? Pair<u16, u16>(mFrameWidth, mFrameHeight) : Pair<u16, u16>(mFrameWidth, defHeight);
	else if (mFrameHeight != -1)
		return Pair<u16, u16>(defWidth, mFrameHeight);

	int i = MIN(defWidth, defHeight);
	return Pair<u16, u16>(static_cast<u16>(i), static_cast<u16>(i));
}

u16 AnimationMetadataSection::getFrameTimeSingle(u16 frame) const {
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

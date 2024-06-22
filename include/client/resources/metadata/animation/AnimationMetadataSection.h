#pragma once

#include <3ds/types.h>
#include <util/Pair.h>
#include <utility>
#include <vector/vector.h>

#include "client/resources/metadata/animation/AnimationFrame.h"

class AnimationMetadataSection {
	private:
		vector<AnimationFrame> mAnimationFrames;
		u16 mFrameWidth;
		u16 mFrameHeight;
		u16 mFrameTime;
		bool interpolate;

	public:
		AnimationMetadataSection(vector<AnimationFrame>& animationFrames, u16 frameWidth, u16 frameHeight, u16 frameTime, bool interpolate)
			: mAnimationFrames(std::move(animationFrames)),	 // Use std::move to efficiently move the vector
			  mFrameWidth(frameWidth),
			  mFrameHeight(frameHeight),
			  mFrameTime(frameTime),
			  interpolate(interpolate) {}

		Pair<u16, u16> getSpriteSize(u16 width, u16 height);
		Pair<u16, u16> getFrameSize(u16 defWidth, u16 defHeight);

		u16 getFrameHeight(u16 defHeight) const { return mFrameHeight == -1 ? defHeight : mFrameHeight; }
		u16 getFrameWidth(u16 defWidth) const { return mFrameWidth == -1 ? defWidth : mFrameWidth; }
		u16 getFrameCount() const { return static_cast<u16>(mAnimationFrames.size()); }
		u16 getFrameTime() const { return mFrameTime; }
		bool isInterpolate() const { return interpolate; }
		AnimationFrame getAnimationFrame(int frame) const { return mAnimationFrames[frame]; }
		u16 getFrameTimeSingle(u16 frame) const;
		u16 getFrameIndex(u16 frame) const { return mAnimationFrames[frame].getFrameIndex(); }
		vector<int> getFrameIndexSet();
};
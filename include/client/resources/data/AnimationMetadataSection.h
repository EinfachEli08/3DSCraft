#pragma once

#include <3ds/types.h>
#include <util/Pair.h>
#include <utility>
#include <vector/vector.h>

#include "client/resources/data/AnimationFrame.h"

class AnimationMetadataSection {
	private:
		vector<AnimationFrame> mAnimationFrames;
		u8 mFrameWidth;
		u8 mFrameHeight;
		u8 mFrameTime;
		bool interpolate;

	public:
		AnimationMetadataSection(vector<AnimationFrame>& animationFrames, u8 frameWidth, u8 frameHeight, u8 frameTime, bool interpolate)
			: mAnimationFrames(std::move(animationFrames)),	 // Use std::move to efficiently move the vector
			  mFrameWidth(frameWidth),
			  mFrameHeight(frameHeight),
			  mFrameTime(frameTime),
			  interpolate(interpolate) {}

		Pair<u8, u8> getSpriteSize(u8 width, u8 height);
		Pair<u8, u8> getFrameSize(u8 defWidth, u8 defHeight);

		u8 getFrameHeight(u8 defHeight) const { return mFrameHeight == -1 ? defHeight : mFrameHeight; }
		u8 getFrameWidth(u8 defWidth) const { return mFrameWidth == -1 ? defWidth : mFrameWidth; }
		u8 getFrameCount() const { return static_cast<u8>(mAnimationFrames.size()); }
		u8 getFrameTime() const { return mFrameTime; }
		bool isInterpolate() const { return interpolate; }
		AnimationFrame getAnimationFrame(int frame) const { return mAnimationFrames[frame]; }
		u8 getFrameTimeSingle(u8 frame) const;
		u8 getFrameIndex(u8 frame) const { return mAnimationFrames[frame].getFrameIndex(); }
		vector<int> getFrameIndexSet();
};
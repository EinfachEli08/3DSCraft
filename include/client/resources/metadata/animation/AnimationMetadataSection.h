#pragma once

#include <3ds/types.h>
#include <util/Pair.h>
#include <utility>
#include <vector/vector.h>

#include "FrameSize.h"
#include "client/resources/metadata/animation/AnimationFrame.h"
#include "util/math/NumberUtils.h"

class AnimationMetadataSection {
	private:
		u16 mFrameWidth;
		u16 mFrameHeight;
		u16 mDefaultFrameTime;
		bool interpolateFrames;

	public:
		vector<AnimationFrame> mAnimationFrames;

		AnimationMetadataSection(vector<AnimationFrame>& animationFrames, u16 frameWidth, u16 frameHeight, u16 frameTime, bool interpolate)
			: mAnimationFrames(std::move(animationFrames)),	 // Use std::move to efficiently move the vector
			  mFrameWidth(frameWidth),
			  mFrameHeight(frameHeight),
			  mDefaultFrameTime(frameTime),
			  interpolateFrames(interpolate) {}

		FrameSize calculateFrameSize(u16 w, u16 h) {
			if (mFrameWidth != -1)
				return mFrameHeight != -1 ? FrameSize(mFrameWidth, mFrameHeight) : FrameSize(mFrameWidth, h);
			else if (mFrameHeight != -1)
				return FrameSize(w, mFrameHeight);

			u16 i = MIN(w, h);
			return FrameSize(i, i);
		}
		u16 getDefaultFrameTime() const { return mDefaultFrameTime; }
		bool isInterpolatedFrames() const { return interpolateFrames; }
};
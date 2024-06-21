#pragma once

#include <3ds/types.h>

class AnimationFrame {
		u8 mFrameIndex;
		u8 mFrameTime;

	public:
		AnimationFrame(u8 frameIndexIn) : mFrameIndex(frameIndexIn), mFrameTime(-1) {}
		AnimationFrame(u8 frameIndexIn, u8 frameTimeIn) : mFrameIndex(frameIndexIn), mFrameTime(frameTimeIn) {}

		bool hasNoTime() const { return mFrameTime == -1; }
		int getFrameTime() const { return mFrameTime; }
		int getFrameIndex() const { return mFrameIndex; }
};
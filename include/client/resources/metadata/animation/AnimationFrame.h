#pragma once

#include <3ds/types.h>

class AnimationFrame {
		u16 mFrameIndex;
		u16 mFrameTime;

	public:
		AnimationFrame(u16 frameIndexIn) : mFrameIndex(frameIndexIn), mFrameTime(-1) {}
		AnimationFrame(u16 frameIndexIn, u16 frameTimeIn) : mFrameIndex(frameIndexIn), mFrameTime(frameTimeIn) {}

		bool hasNoTime() const { return mFrameTime == -1; }
		u16 getFrameTime() const { return mFrameTime; }
		u16 getFrameIndex() const { return mFrameIndex; }
};
#pragma once

#include "client/renderer/texture/NativeImage.h"
#include "client/renderer/texture/Stitcher.h"
#include "client/renderer/texture/Texture.h"
#include "client/resources/metadata/animation/AnimationMetadataSection.h"
#include "client/resources/metadata/animation/FrameSize.h"

class SpriteContents : Stitcher::Entry {
	public:
		SpriteContents(ResourceLocation name, FrameSize size, Texture* originalImage, AnimationMetadataSection animMetaSection);

		u16 width() const override { return mWidth; }
		u16 height() const override { return mHeight; }
		ResourceLocation name() const override { return mName; }

		vector<int> getUniqueFrames();
		bool isTransparent(u16 index, u16 x, u16 y);
		void uploadFirstFrame(u16 x, u16 y);
		void close();

		class FrameInfo {
				const u16 mIndex, mTime;

			public:
				FrameInfo(u16 index, u16 time) : mIndex(index), mTime(time) {}
		};
		class AnimatedTexture {
				const vector<FrameInfo> mFrames;
				const u16 mFrameRowSize;
				const bool interpolateFrames;

			public:
				AnimatedTexture(vector<FrameInfo> frames, u16 frameRowSize, bool interpolateFrames)
					: mFrames(frames), mFrameRowSize(frameRowSize), interpolateFrames(interpolateFrames) {}

				u16 getFrameX(u16 index) const { return index % mFrameRowSize; }
				u16 getFrameY(u16 index) const { return index / mFrameRowSize; }
		};
		class InterpolationData {
				const NativeImage* mActiveFrame;

			public:
				InterpolationData(GPU_TEXCOLOR fmt, u16 w, u16 h) : mActiveFrame(new NativeImage(fmt, w, h, false)) {}
		};

	private:
		const ResourceLocation mName;
		const NativeImage* mOriginalImage;
		const AnimatedTexture mAnimatedTexture;
		u16 mWidth, mHeight;

		void upload();
		int getFrameCount() const;
		AnimatedTexture createAnimatedTexture(FrameSize size, u16 w, u16 h, AnimationMetadataSection animMetaSection);
};
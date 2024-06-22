#pragma once

#include "client/renderer/texture/NativeImage.h"
#include "client/renderer/texture/SpriteTicker.h"
#include "client/renderer/texture/Stitcher.h"
#include "client/renderer/texture/Texture.h"
#include "client/resources/metadata/animation/AnimationMetadataSection.h"
#include "client/resources/metadata/animation/FrameSize.h"

class SpriteContents : public Stitcher::Entry {
	public:
		SpriteContents(ResourceLocation name, const FrameSize* size, NativeImage* originalImage,
					   const AnimationMetadataSection* animMetaSection);

		u16 width() const override { return mWidth; }
		u16 height() const override { return mHeight; }
		ResourceLocation name() const override { return mName; }

		vector<u16> getUniqueFrames();
		const SpriteTicker* createTicker();
		bool isTransparent(u16 index, u16 x, u16 y);
		void uploadFirstFrame();
		void upload() const;
		void close();

		class FrameInfo;
		class AnimatedTexture;
		class Ticker;
		class InterpolationData;

		class FrameInfo {
			public:
				const SpriteContents* mParent;
				const u16 mIndex, mTime;

				FrameInfo(u16 index, u16 time, const SpriteContents* parent) : mIndex(index), mTime(time), mParent(parent) {}
		};
		class AnimatedTexture {
				const SpriteContents* mParent;
				const u16 mFrameRowSize;
				const bool interpolateFrames;

			public:
				const vector<FrameInfo> mFrames;

				AnimatedTexture(vector<FrameInfo> frames, u16 frameRowSize, bool interpolateFrames, const SpriteContents* parent)
					: mFrames(frames), mFrameRowSize(frameRowSize), interpolateFrames(interpolateFrames), mParent(parent) {}

				u16 getFrameX(u16 index) const { return index % mFrameRowSize; }
				u16 getFrameY(u16 index) const { return index / mFrameRowSize; }
				void uploadFrame(u16 index) const;
				const SpriteTicker* createTicker() const;
				void uploadFirstFrame() const;
				vector<u16> getUniqueFrames() const;
		};
		class InterpolationData {
				const SpriteContents* mParent;
				NativeImage* mActiveFrame;

			public:
				InterpolationData(GPU_TEXCOLOR fmt, u16 w, u16 h, const SpriteContents* parent)
					: mActiveFrame(new NativeImage(fmt, w, h, false)), mParent(parent) {}

				void uploadInterpolatedFrame(const Ticker* ticker);
				u32 getPixel(const AnimatedTexture* animatiionInfo, u16 index, u16 x, u16 y);
				u32 mix(double first, int second, int third);

				void close();
		};
		class Ticker : public SpriteTicker {
				const SpriteContents* mParent;
				const InterpolationData* mInterpolationData;

			public:
				u16 mFrame, mSubframe;
				const AnimatedTexture* mAnimationInfo;

				Ticker(const AnimatedTexture* animationInfo, const InterpolationData* interpolationData, const SpriteContents* parent)
					: mAnimationInfo(animationInfo), mInterpolationData(interpolationData), mParent(parent) {}

				void tickAndUpload(int first, int second) override;
				void close() override;
		};

	private:
		const ResourceLocation mName;
		NativeImage* mOriginalImage;
		const AnimatedTexture* mAnimatedTexture;
		u16 mWidth, mHeight;

		u16 getFrameCount() const;
		const AnimatedTexture* createAnimatedTexture(const FrameSize* size, u16 w, u16 h, const AnimationMetadataSection* animMetaSection);
};
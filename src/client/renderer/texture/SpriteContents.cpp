#include "client/renderer/texture/SpriteContents.h"

#include <set>

SpriteContents::SpriteContents(ResourceLocation name, const FrameSize* size, NativeImage* originalImage,
							   const AnimationMetadataSection* animMetaSection)
	: mName(name),
	  mWidth(size->getWidth()),
	  mHeight(size->getHeight()),
	  mAnimatedTexture(createAnimatedTexture(size, originalImage->getWidth(), originalImage->getHeight(), animMetaSection)),
	  mOriginalImage(originalImage) {
}
u16 SpriteContents::getFrameCount() const {
	return mAnimatedTexture != nullptr ? mAnimatedTexture->mFrames.size();
}
const SpriteContents::AnimatedTexture* SpriteContents::createAnimatedTexture(const FrameSize* size, u16 w, u16 h,
																			 const AnimationMetadataSection* animMetaSection) {
	u16 i	 = w / size->getWidth();
	u16 j	 = h / size->getHeight();
	size_t k = i * j;
	vector<SpriteContents::FrameInfo> list;

	for (const auto& animationFrame : animMetaSection->mAnimationFrames) {
		list.emplace_back(animationFrame.getFrameIndex(), animationFrame.getFrameTime(), this);
	}

	if (list.empty()) {
		for (size_t l = 0; l < k; ++l) {
			list.emplace_back(l, animMetaSection->getDefaultFrameTime(), this);
		}
	} else {
		size_t sizeList = list.size();
		for (size_t i1 = 0; i1 < sizeList; i1++) {
			FrameInfo& frameInfo = list[i1];
			bool flag			 = true;

			if (frameInfo.mTime <= 0) {
				// Assuming 'Break' is a macro or function to handle errors in your C++ context
				Break("Invalid frame duration on sprite %s frame %i: %i", mName, i1, frameInfo.mTime);
				flag = false;
			}

			if (frameInfo.mIndex < 0 || frameInfo.mIndex >= k) {
				Break("Invalid frame index on sprite %s frame %i: %i", mName, i1, frameInfo.mIndex);
				flag = false;
			}

			if (!flag) {
				list.erase(i1);
				--i;
				--sizeList;
			}
		}
	}

	return list.size() <= 1 ? nullptr : new SpriteContents::AnimatedTexture(list, i, animMetaSection->isInterpolatedFrames(), this);
}
void SpriteContents::upload() const {
	mOriginalImage->upload();
}
vector<u16> SpriteContents::getUniqueFrames() {
	if (mAnimatedTexture != nullptr)
		return mAnimatedTexture->getUniqueFrames();

	vector<u16> ret;
	ret.push_back(1);
	return ret;
}
const SpriteTicker* SpriteContents::createTicker() {
	return mAnimatedTexture != nullptr ? mAnimatedTexture->createTicker() : nullptr;
}
void SpriteContents::close() {
	mOriginalImage->close();
}
bool SpriteContents::isTransparent(u16 index, u16 x, u16 y) {
	u16 i = x, j = y;
	if (mAnimatedTexture != nullptr) {
		i = x + mAnimatedTexture->getFrameX(index) * mWidth;
		j = y + mAnimatedTexture->getFrameY(index) * mHeight;
	}

	return (mOriginalImage->getPixel(i, j) >> 24 & 255) == 0;
}
void SpriteContents::uploadFirstFrame() {
	if (mAnimatedTexture != nullptr)
		mAnimatedTexture->uploadFirstFrame();
	else
		upload();
}
void SpriteContents::AnimatedTexture::uploadFrame(u16 index) const {
	u16 i = getFrameX(index) * mParent->mWidth;
	u16 j = getFrameY(index) * mParent->mHeight;
	mParent->upload();
}
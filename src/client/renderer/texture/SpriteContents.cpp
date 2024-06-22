#include "client/renderer/texture/SpriteContents.h"

SpriteContents::SpriteContents(ResourceLocation name, FrameSize size, Texture* originalImage, AnimationMetadataSection animMetaSection)
	: mName(name),
	  mWidth(size.getWidth()),
	  mHeight(size.getHeight()),
	  mAnimatedTexture(createAnimatedTexture(size, originalImage->getWidth(), originalImage->getHeight(), animMetaSection)),
	  mOriginalImage(originalImage) {
}
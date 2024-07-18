#pragma once

#include "client/resources/metadata/animation/AnimationMetadataSection.h"
#include "resources/data/IMetadataSectionSerializer.h"
#include "util/JsonUtils.h"

class AnimationMetadataSectionSerializer : IMetadataSectionSerializer<AnimationMetadataSection> {
		AnimationFrame* parseAnimationFrame(u16 frame, cJSON* element);

	public:
		AnimationMetadataSection deserialize(cJSON* json) override;
		const char* getSectionName() override { return "animation"; }
};
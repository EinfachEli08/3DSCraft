#include "client/resources/metadata/animation/AnimationMetadataSectionSerializer.h"

#include "client/Exception.h"
#include "util/math/NumberUtils.h"

AnimationMetadataSection AnimationMetadataSectionSerializer::deserialize(cJSON* json) {
	vector<AnimationFrame> list;
	int i = JsonUtils::getInt(json, "frametime", 1);
	if (i != 1 && !isBetween(1, sizeof(u16), i))
		Crash("Invalid default frame time: %i\njson: %s", i, cJSON_Print(json));
	if (JsonUtils::hasField(json, "frames")) {
		cJSON* jsonArray = JsonUtils::getJsonArray(json, "frames");

		if (!cJSON_IsArray(jsonArray))
			Crash("Invalid animation->frames: expected array, was type %i\njson: %s", jsonArray->type, cJSON_Print(jsonArray));

		cJSON* element;
		u16 j = 0;
		cJSON_ArrayForEach(element, jsonArray) {
			AnimationFrame* animationframe = parseAnimationFrame(j, element);
			if (animationframe != nullptr)
				list.push_back(*animationframe);
			j++;
		}

		u16 k = JsonUtils::getInt(json, "width", -1);
		u16 l = JsonUtils::getInt(json, "height", -1);

		if (k != -1 && !isBetween(1, sizeof(u16), k))
			Crash("Invalid width: %i\njson: %s", k, cJSON_Print(json));

		if (l != -1 && !isBetween(1, sizeof(u16), l))
			Crash("Invalid height: %i\njson: %s", l, cJSON_Print(json));

		bool flag = JsonUtils::getBoolean(json, "interpolate", false);
		return AnimationMetadataSection(list, k, l, i, flag);

	}  // TODO: undone
};
AnimationFrame* AnimationMetadataSectionSerializer::parseAnimationFrame(u16 frame, cJSON* element) {
	if (JsonUtils::isJsonPrimitive(element))
		return new AnimationFrame(JsonUtils::getInt(element, "frames." + frame));
	else if (JsonUtils::isJsonObject(element)) {
		cJSON* jsonobject = JsonUtils::getJsonObject(element, "frames." + frame);
		int i			  = JsonUtils::getInt(jsonobject, "time", -1);
		if (JsonUtils::hasField(jsonobject, "time") && !isBetween(1, sizeof(u16), i))
			Crash("Invalid frame time: %i\njson: %s", i, cJSON_Print(jsonobject));

		int j = JsonUtils::getInt(jsonobject, "index");
		if (!isBetween(1, sizeof(u16), i))
			Crash("Invalid frame index: %i\njson: %s", j, cJSON_Print(jsonobject));

		return new AnimationFrame(j, i);

		return nullptr;
	}
}
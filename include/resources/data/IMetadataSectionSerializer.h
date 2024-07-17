#pragma once

#include <cJSON/cJSON.h>

template <typename T>
class IMetadataSectionSerializer {
		virtual const char* getSectionName() = 0;
		virtual T deserialize(cJSON* json);
};
#pragma once

#include <cstring>
#include <string>

class ResourceLocation {
	public:
		char mNamespace[64];
		char mPath[256];

		ResourceLocation(const char* path) {
			strncpy(mNamespace, "minecraft", sizeof(mNamespace));
			strncpy(mPath, path, sizeof(mPath));
		}

		ResourceLocation(const char* namespace_, const char* path) {
			strncpy(mNamespace, namespace_, sizeof(mNamespace));
			strncpy(mPath, path, sizeof(mPath));
		}

		const char* getNamespace() const { return mNamespace; }
		const char* getPath() const { return mPath; }

		bool operator==(const ResourceLocation& other) const {
			return strcmp(mNamespace, other.mNamespace) == 0 && strcmp(mPath, other.mPath) == 0;
		}

		struct Hash {
				size_t operator()(const ResourceLocation& key) const {
					return std::hash<std::string>()(key.mNamespace) ^ std::hash<std::string>()(key.mPath);
				}
		};
};

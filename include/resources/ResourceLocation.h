#pragma once

#include <cstring>
#include <string>

// Used to point to anything, like files, item names...
class ResourceLocation {
		std::string mNamespace;
		std::string mPath;

	public:
		ResourceLocation(std::string path) {
			mNamespace = "minecraft";
			mPath	   = path;
		}

		ResourceLocation(std::string namespace_, std::string path) {
			mNamespace = namespace_;
			mPath	   = path;
		}

		const char* getNamespace() const { return mNamespace.c_str(); }
		const char* getPath() const { return mPath.c_str(); }

		ResourceLocation* withPrefix(const char* prefix) { return new ResourceLocation(mNamespace, prefix + mPath); }
		ResourceLocation* withSuffix(const char* suffix) { return new ResourceLocation(mNamespace, mPath + suffix); }

		const char* toString() const { return std::string(mNamespace + ":" + mPath).c_str(); }

		bool operator==(const ResourceLocation& other) const { return mNamespace == other.mNamespace && mPath == other.mPath; }

		struct Hash {
				size_t operator()(const ResourceLocation& key) const {
					return std::hash<std::string>()(key.mNamespace) ^ std::hash<std::string>()(key.mPath);
				}
		};
};

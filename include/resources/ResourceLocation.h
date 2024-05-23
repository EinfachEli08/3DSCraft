#pragma once

#include <functional>
#include <string>

class ResourceLocation {
	private:
		std::string mNamespace;
		std::string mPath;

	public:
		ResourceLocation(const std::string& path) : mNamespace("minecraft"), mPath(path) {}

		ResourceLocation(const std::string& namespace_, const std::string& path) : mNamespace(namespace_), mPath(path) {}

		std::string getNamespace() const { return mNamespace; }
		std::string getPath() const { return mPath; }

		std::string toString() const { return mNamespace + ":" + mPath; }

		bool operator==(const ResourceLocation& other) const { return mNamespace == other.mNamespace && mPath == other.mPath; }

		ResourceLocation withPrefix(const std::string& prefix) const { return ResourceLocation(mNamespace, prefix + mPath); }

		ResourceLocation withPath(const std::string& path) const {
			return ResourceLocation(mNamespace, path);
		}

		struct HashFunction {
				size_t operator()(const ResourceLocation& location) const { return std::hash<std::string>()(location.toString()); }
		};
};

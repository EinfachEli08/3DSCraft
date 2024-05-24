#pragma once
#pragma once

#include <cstring>

class ResourceLocation {
	private:
		const char* mNamespace;
		const char* mPath;

	public:
		ResourceLocation(const char* path) : mNamespace("minecraft"), mPath(path) {}

		ResourceLocation(const char* namespace_, const char* path) : mNamespace(namespace_), mPath(path) {}

		const char* getNamespace() const { return mNamespace; }
		const char* getPath() const { return mPath; }

		bool operator==(const ResourceLocation& other) const {
			return strcmp(mNamespace, other.mNamespace) == 0 && strcmp(mPath, other.mPath) == 0;
		}

		struct HashFunction {
				size_t operator()(const ResourceLocation& key) const {
					size_t res		= 17;
					const char* str = key.getNamespace();
					while (*str) {
						res = res * 31 + *str++;
					}
					str = key.getPath();
					while (*str) {
						res = res * 31 + *str++;
					}
					return res;
				}
		};
};

#pragma once

#include <algorithm>
#include <cstring>
#include <string>

class ResourceLocation {
	public:
		std::string mNamespace;
		std::string mPath;

		ResourceLocation(const char* path) { ResourceLocation("minecraft", path); }
		ResourceLocation(const char* namespace_, const char* path) : mNamespace(namespace_), mPath(path) {
			if (!isValidNamespace(mNamespace.c_str())) {
				printf("Non [a-z0-9_.-] character in namespace of location");
			}
			if (!isValidPath(mPath.c_str())) {
				printf("Non [a-z0-9/._-] character in path of location");
			}
		}

		const char* getNamespace() const { return mNamespace.c_str(); }
		const char* getPath() const { return mPath.c_str(); }

		std::string toString() const { return mNamespace + ":" + mPath; }

		static bool isValidResourceLocation(const char* location) {
			auto separator = std::find(location, location + strlen(location), ':');
			if (separator == location || separator == location + strlen(location) - 1) {
				return false;  // Missing namespace separator
			}
			auto namespace_ = std::string(location, separator);
			auto path		= std::string(separator + 1, location + strlen(location));
			return isValidNamespace(namespace_.c_str()) && isValidPath(path.c_str());
		}

	private:
		static bool isValidPath(const char* path) {
			return std::all_of(path, path + strlen(path), [](char c) {
				return c == '_' || c == '-' || (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9') || c == '/' || c == '.' || c == '-';
			});
		}

		static bool isValidNamespace(const char* namespace_) {
			return std::all_of(namespace_, namespace_ + strlen(namespace_),
							   [](char c) { return c == '_' || c == '-' || (c >= 'a' && c <= 'z') || (c >= '0' && c <= '9') || c == '.'; });
		}
};

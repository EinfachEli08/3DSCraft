#pragma once

#include "resources/ResourceLocation.h"

class FileToIdConverter {
		std::string mPrefix;
		std::string mExtension;

	public:
		FileToIdConverter(std::string prefix, std::string extension) : mPrefix(prefix), mExtension(extension) {}

		static FileToIdConverter* json(const char* name) { return new FileToIdConverter(name, ".json"); }

		ResourceLocation idToFile(ResourceLocation loc) { return loc.withPath(mPrefix + "/" + loc.getPath() + mExtension); }
		ResourceLocation fileToId(ResourceLocation loc) {
			std::string s = loc.getPath();
			return loc.withPath(s.substr(mPrefix.length() + 1, s.length() - mExtension.length()));
		}
};
#pragma once

#include <jansson.h>

// struct DataResult;
class ResourceLocation {
	public:
		ResourceLocation(const char* namespc, const char* path);
		ResourceLocation(const char* path);

		static ResourceLocation of(const char* name, const char character);
		static ResourceLocation tryParse(const char* path);
		static ResourceLocation tryBuild(const char* namespc, const char* path);
		// static DataResult tryCreate(const char* path); //read() in og, but its static and creates.
		static ResourceLocation tryCreate(const char* path);

		static bool isAllowedInResourceLocation(const char character);
		static bool isValidPath(const char* path);
		static bool isValidNamespace(const char* namespc);
		static bool validPathChar(const char character);
		static bool validNamespaceChar(const char character);
		static bool isValidResourceLocation(const char*);

		static const char* assertValidPath(const char* namespc, const char* path);
		static const char* assertValidNamespace(const char* namespc, const char* path);

		bool operator==(const ResourceLocation& other) const;
		const char* toString();
		const char* toDebugFileName();
		const char* toShortLanguageKey();
		const char* toLanguageKey();
		const char* toLanguageKey(const char* langKey);
		const char* toLanguageKey(const char* langKey0, const char* langKey1);

		struct Serializer {
				static ResourceLocation deserialize(const json_t* json);
				static json_t* serialize(const ResourceLocation& location);
		};

		const char* getPath() { return mPath; }
		const char* getNamespace() { return mNamespc; }

	protected:
		void create(const char** paths);
		void create(const char* namespc, const char* path);
		static const char** decompose(const char* string, const char character);

	private:
		const char* mNamespc;
		const char* mPath;
		const char cNamespcSeparate = ':';
		const char* cNamespcDefault = "minecraft";
};
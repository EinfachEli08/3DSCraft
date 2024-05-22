#pragma once

#include "ResourceLocation.h"
#include <string>

// points directly to something, for example registryName = minecraft:item and location = minecraft:diamond_sword
template <typename T>
class ResourceKey {
	public:
		ResourceKey(ResourceLocation* registryName, ResourceLocation* location) /*: mRegistryName(registryName), mLocation(location)*/ {}

		const char* toString() const {
			return std::string("ResourceKey[" + mRegistryName->toString() + " / " + mLocation->toString() + "]");
		}

		ResourceLocation* registry() const { return mRegistryName; }
		ResourceLocation* location() const { return mLocation; }

		bool operator==(const ResourceKey& other) const {
			return mRegistryName->toString() == other.mRegistryName->toString() && mLocation->toString() == other.mLocation->toString();
		}

		struct Hash {
				std::size_t operator()(const ResourceKey& key) const { return std::hash<std::string>()(key.toString()); }
		};

	private:
		ResourceLocation* mRegistryName = nullptr;
		ResourceLocation* mLocation		= nullptr;
};

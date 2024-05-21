#pragma once

#include "ResourceLocation.h"
#include <string>

template <typename T>
class ResourceKey {
	public:
		ResourceKey(const ResourceLocation* registryName, const ResourceLocation* location)
			: mRegistryName(registryName), mLocation(location) {}

		std::string toString() const { return "ResourceKey[" + mRegistryName->toString() + " / " + mLocation->toString() + "]"; }

		const ResourceLocation* getRegistry() const { return mRegistryName; }
		const ResourceLocation* getLocation() const { return mLocation; }

		bool operator==(const ResourceKey& other) const {
			return mRegistryName->toString() == other.mRegistryName->toString() && mLocation->toString() == other.mLocation->toString();
		}

		struct Hash {
				std::size_t operator()(const ResourceKey& key) const { return std::hash<std::string>()(key.toString()); }
		};

	private:
		const ResourceLocation* mRegistryName;
		const ResourceLocation* mLocation;
};

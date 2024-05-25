#pragma once

#include <vector>

template <typename T>
class Registry;

class ResourceLocation;
class Block;

struct BuiltInRegistries {
		static ResourceLocation ROOT_REGISTRY_NAME;
		template <typename T>
		static std::vector<Registry<T>> ROOT_REGISTRY;

		static Registry<Block>* BLOCK;
};

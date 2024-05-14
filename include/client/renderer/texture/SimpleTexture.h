#pragma once

#include "resources/ResourceLocation.h"

class SimpleTexture {
	public:
		SimpleTexture(ResourceLocation location) : mLocation(location) {}

		void load();

	protected:
		const ResourceLocation mLocation;
};
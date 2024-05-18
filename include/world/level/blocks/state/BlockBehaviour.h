#pragma once

#include "flag/FeatureElement.h"

class BlockBehaviour : public FeatureElement {
	public:
	protected:
		bool hasCollision;
		float explosionResistance;
		bool isRandomlyTicking;
};
#pragma once

#include <regex>
#include <vector>

#include "world/level/block/state/StateHolder.h"

template <typename O, typename S>
class StateDefinition : public StateHolder {
	public:
		StateDefinition(S (*stateHolderFactory)(O), O owner, Property<int>** properties, size_t propertyCount);

		~StateDefinition();

		const S* getPossibleStates() const { return states; }

		size_t getStateCount() const { return stateCount; }

		S* any() const { return states[0]; }

		O getOwner() const { return owner; }

		const Property<int>** getProperties() const { return properties; }

		size_t getPropertyCount() const { return propertyCount; }

		void toString(char* buffer, size_t bufferSize) const;

	private:
		O owner;
		Property<int>** properties;
		size_t propertyCount;
		S (*stateHolderFactory)(O);
		S** states;
		size_t stateCount;

		void generateStates() {
			size_t totalCombinations = 1;
			for (size_t i = 0; i < propertyCount; ++i) {
				totalCombinations *= properties[i]->getAllowedValueCount();
			}

			states	   = new S*[totalCombinations];
			stateCount = totalCombinations;

			for (size_t i = 0; i < totalCombinations; ++i) {
				states[i] = new S(stateHolderFactory(owner));
			}

			size_t divisor = 1;
			for (size_t i = 0; i < propertyCount; ++i) {
				size_t valuesCount = properties[i]->getAllowedValueCount();
				size_t repeatCount = totalCombinations / (divisor * valuesCount);
				const int* values  = properties[i]->getAllowedValues();

				for (size_t j = 0; j < totalCombinations; ++j) {
					size_t valueIndex = (j / divisor) % valuesCount;
					states[j]->setProperty(*properties[i], values[valueIndex]);
				}

				divisor *= valuesCount;
			}
		}
};
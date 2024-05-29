#include "world/level/block/state/StateDefinition.h"

template <typename O, typename S>
StateDefinition<O, S>::StateDefinition(S (*stateHolderFactory)(O), O owner, Property<int>** properties, size_t propertyCount)
	: stateHolderFactory(stateHolderFactory), owner(owner), properties(properties), propertyCount(propertyCount) {
	generateStates();
}

template <typename O, typename S>
StateDefinition<O, S>::~StateDefinition() {
	for (size_t i = 0; i < stateCount; ++i) {
		delete states[i];
	}
	delete[] states;
}
template <typename O, typename S>
void StateDefinition<O, S>::toString(char* buffer, size_t bufferSize) const {
	std::string result = "Owner: " + std::to_string(owner) + "\nProperties:\n";
	for (size_t i = 0; i < propertyCount; ++i) {
		result += properties[i]->getName() + "\n";
	}
	std::snprintf(buffer, bufferSize, "%s", result.c_str());
}
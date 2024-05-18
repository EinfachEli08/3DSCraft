#pragma once

class FeatureFlagUniverse {
	public:
		FeatureFlagUniverse(const char* id) : mId(id) {}
		const char* toString() { return mId; }

	private:
		const char* mId;
};
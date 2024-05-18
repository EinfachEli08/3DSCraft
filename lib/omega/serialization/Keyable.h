#pragma once

class Keyable {
	public:
		template <typename T>
		virtual std::vector<T> keys(DynamicOps<T>& ops) = 0;
}
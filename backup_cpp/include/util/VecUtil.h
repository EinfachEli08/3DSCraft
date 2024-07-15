#pragma once

namespace Vec {
template <typename T>
void splice(std::vector<T*>& v, size_t start, size_t count) {
	if (start >= v.size())
		return;
	auto it_start = v.begin() + start;
	auto it_end	  = it_start + std::min(count, v.size() - start);
	v.erase(it_start, it_end);
}
template <typename T>
void push_array(std::vector<T>& vec, T* array, size_t length) {
	auto begin = array;
	auto end   = array + length;

	vec.insert(vec.end(), begin, end);
}
}  // namespace Vec
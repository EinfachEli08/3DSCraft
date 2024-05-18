#pragma once

#include <functional>
#include <iostream>
#include <memory>
#include <optional>
#include <sstream>
#include <unordered_map>
#include <utility>
#include <vector>

template <typename A>
class Decoder;
template <typename A>
class Encoder;

template <typename T>
class DynamicOps {
	public:
		virtual T empty() const = 0;

		virtual T createNumeric(const char* value) const = 0;

		virtual T createString(const char* value) const = 0;

		virtual T createMap(const std::unordered_map<T, T>& map) const = 0;

		virtual T createList(const std::vector<T>& list) const = 0;

		virtual std::optional<int> getNumberValue(const T& input) const = 0;

		virtual const char* getStringValue(const T& input) const = 0;

		virtual int getNumberValue(const T& input, const int& defaultValue) const = 0;

		virtual bool getBooleanValue(const T& input) const = 0;

		virtual T mergeToList(const T& list, const T& value) const = 0;

		virtual T mergeToList(const T& list, const std::vector<T>& values) const = 0;

		virtual T mergeToMap(const T& map, const T& key, const T& value) const = 0;

		virtual T mergeToMap(const T& map, const std::unordered_map<T, T>& values) const = 0;

		// virtual T mergeToMap(const T& map, const MapLike<T>& values) const = 0;

		virtual T mergeToPrimitive(const T& prefix, const T& value) const = 0;

		// virtual std::vector<Pair<T>> getMapValues(const T& input) const = 0;

		virtual std::function<void(const std::function<void(T, T)>&)> getMapEntries(const T& input) const = 0;

		// virtual MapLike<T> getMap(const T& input) const = 0;

		virtual std::function<void(const std::function<void(T)>&)> getList(const T& input) const = 0;

		// virtual ByteBuffer getByteBuffer(const T& input) const = 0;

		// virtual T createByteList(const ByteBuffer& input) const = 0;

		virtual std::vector<int> getIntStream(const T& input) const = 0;

		virtual T createIntList(const std::vector<int>& input) const = 0;

		virtual std::vector<long> getLongStream(const T& input) const = 0;

		virtual T createLongList(const std::vector<long>& input) const = 0;

		virtual T remove(const T& input, const char* key) const = 0;

		virtual bool compressMaps() const = 0;

		virtual T get(const T& input, const char* key) const = 0;

		virtual T getGeneric(const T& input, const T& key) const = 0;

		virtual T set(const T& input, const char* key, const T& value) const = 0;

		virtual T update(const T& input, const char* key, const std::function<T(const T&)>& function) const = 0;

		virtual T updateGeneric(const T& input, const T& key, const std::function<T(const T&)>& function) const = 0;

		// virtual ListBuilder<T> listBuilder() const = 0;

		// virtual RecordBuilder<T> mapBuilder() const = 0;

		virtual std::function<T(const Encoder<E>&, const E&)> withEncoder(const Encoder<E>& encoder) const = 0;

		virtual std::function<Pair<E, T>(const Decoder<E>&, const T&)> withDecoder(const Decoder<E>& decoder) const = 0;

		virtual std::function<E(const Decoder<E>&, const T&)> withParser(const Decoder<E>& decoder) const = 0;

		virtual T convertList(const DynamicOps<U>& outOps, const T& input) const = 0;

		virtual T convertMap(const DynamicOps<U>& outOps, const T& input) const = 0;
};

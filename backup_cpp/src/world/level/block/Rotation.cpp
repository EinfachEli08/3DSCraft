#include "world/level/block/Rotation.h"

inline Rotation::_ Rotation::getRotated(Rotation::_ base, Rotation::_ rotation) {
	switch (rotation) {
		case Rotation::_::CLOCKWISE_180:
			switch (base) {
				case Rotation::_::NONE:
					return Rotation::_::CLOCKWISE_180;
				case Rotation::_::CLOCKWISE_90:
					return Rotation::_::COUNTERCLOCKWISE_90;
				case Rotation::_::CLOCKWISE_180:
					return Rotation::_::NONE;
				case Rotation::_::COUNTERCLOCKWISE_90:
					return Rotation::_::CLOCKWISE_90;
			}
		case Rotation::_::COUNTERCLOCKWISE_90:
			switch (base) {
				case Rotation::_::NONE:
					return Rotation::_::COUNTERCLOCKWISE_90;
				case Rotation::_::CLOCKWISE_90:
					return Rotation::_::NONE;
				case Rotation::_::CLOCKWISE_180:
					return Rotation::_::CLOCKWISE_90;
				case Rotation::_::COUNTERCLOCKWISE_90:
					return Rotation::_::CLOCKWISE_180;
			}
		case Rotation::_::CLOCKWISE_90:
			switch (base) {
				case Rotation::_::NONE:
					return Rotation::_::CLOCKWISE_90;
				case Rotation::_::CLOCKWISE_90:
					return Rotation::_::CLOCKWISE_180;
				case Rotation::_::CLOCKWISE_180:
					return Rotation::_::COUNTERCLOCKWISE_90;
				case Rotation::_::COUNTERCLOCKWISE_90:
					return Rotation::_::NONE;
			}
		default:
			return base;
	}
}

inline Rotation::_ Rotation::getRandom() {
	return (Rotation::_)(rand() % 4);
}
/*
Direction::_ Rotation::_::rotate(Rotation::_ rot, Direction::_ dir) {
	if (dir.getAxis() == Direction::Axis::Y) {
		return dir;
	} else {
		switch (rot) {
			case Rotation::CLOCKWISE_90:
				return dir.getClockWise();
			case Rotation::CLOCKWISE_180:
				return dir.getOpposite();
			case Rotation::COUNTERCLOCKWISE_90:
				return dir.getCounterClockWise();
			default:
				return dir;
		}
	}
}*/

inline int Rotation::rotate(Rotation::_ rotation, int value, int modulus) {
	switch (rotation) {
		case Rotation::_::CLOCKWISE_90:
			return (value + modulus / 4) % modulus;
		case Rotation::_::CLOCKWISE_180:
			return (value + modulus / 2) % modulus;
		case Rotation::_::COUNTERCLOCKWISE_90:
			return (value + modulus * 3 / 4) % modulus;
		default:
			return rotation;
	}
}

inline std::array<Rotation::_, 4> Rotation::getShuffled() {
	std::array<Rotation::_, 4> shuffledRotations = {Rotation::_::NONE, Rotation::_::CLOCKWISE_90, Rotation::_::CLOCKWISE_180,
													Rotation::_::COUNTERCLOCKWISE_90};
	// Custom shuffling algorithm
	for (int i = 3; i > 0; --i) {
		int j = rand() % (i + 1);
		std::swap(shuffledRotations[i], shuffledRotations[j]);
	}
	return shuffledRotations;
}
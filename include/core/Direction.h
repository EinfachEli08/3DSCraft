#pragma once

enum class Direction {
	Down,
	Up,
	North,
	South,
	West,
	East,
	Invalid
};

enum class Axis {
	X,
	Y,
	Z
};

extern int DirectionToOffset[7][3];
extern Direction DirectionOpposite[7];
extern Axis DirectionToAxis[7];
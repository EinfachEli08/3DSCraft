#pragma once

#include "VertexFmt.h"

const WorldVertex cube_sides_lut[] = {
	// Fourth face (MX)
	// First triangle
	{{0, 0, 0}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	{{0, 0, 1}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	{{0, 1, 1}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	// Second triangle
	{{0, 1, 1}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	{{0, 1, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	{{0, 0, 0}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	// Third face (PX)
	// First triangle
	{{1, 0, 0}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	{{1, 1, 0}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	{{1, 1, 1}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	// Second triangle
	{{1, 1, 1}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	{{1, 0, 1}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	{{1, 0, 0}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	// Sixth face (MY)
	// First triangle
	{{0, 0, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	{{1, 0, 0}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	{{1, 0, 1}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	// Second triangle
	{{1, 0, 1}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	{{0, 0, 1}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	{{0, 0, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	// Fifth face (PY)
	// First triangle
	{{0, 1, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	{{0, 1, 1}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	{{1, 1, 1}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	// Second triangle
	{{1, 1, 1}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	{{1, 1, 0}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	{{0, 1, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	// Second face (MZ)
	// First triangle
	{{0, 0, 0}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	{{0, 1, 0}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	{{1, 1, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	// Second triangle
	{{1, 1, 0}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	{{1, 0, 0}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	{{0, 0, 0}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	// First face (PZ)
	// First triangle
	{{0, 0, 1}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
	{{1, 0, 1}, {1, 0}, {255, 255, 255}, {0, 0, 0}},
	{{1, 1, 1}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	// Second triangle
	{{1, 1, 1}, {1, 1}, {255, 255, 255}, {0, 0, 0}},
	{{0, 1, 1}, {0, 1}, {255, 255, 255}, {0, 0, 0}},
	{{0, 0, 1}, {0, 0}, {255, 255, 255}, {0, 0, 0}},
};
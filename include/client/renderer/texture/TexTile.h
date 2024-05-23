#pragma once

namespace TileSetGroup {
enum _ : u8 {
	BLOCKS = 0,
	COUNT
};
}  // namespace TileSetGroup

struct TexTile {
		TileSetGroup::_ group;
		u8 id;
};
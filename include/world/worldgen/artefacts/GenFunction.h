//
// Created by Elias on 03.05.2024.
//
#pragma once

#include "world/World.h"

namespace GenFunction {

// Function declaration for generating trees
void genTrees(Chunk* chunk, int x, int y, int z);
// Function to generate caves
void genCaves(Chunk* chunk, int x, int y, int z);

}  // namespace GenFunction
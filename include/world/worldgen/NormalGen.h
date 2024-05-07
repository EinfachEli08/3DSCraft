#pragma once

#include <world/World.h>

typedef struct { World* world; } NormalGen;

void NormalGen_Init(NormalGen* gen, World* world);
void NormalGen_Generate(WorkQueue* queue, WorkerItem item, void* notthis);
#pragma once

#include <world/World.h>

typedef struct { World* world; } CustomGen;

void CustomGen_Init(CustomGen* gen, World* world);
void CustomGen_Generate(WorkQueue* queue, WorkerItem item, void* this);
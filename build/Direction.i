# 0 "C:/Users/Elias/CLionProjects/3DSCraft/source/world/Direction.c"
# 1 "C:\\Users\\Elias\\CLionProjects\\3DSCraft\\build//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "C:/Users/Elias/CLionProjects/3DSCraft/source/world/Direction.c"
# 1 "C:/Users/Elias/CLionProjects/3DSCraft/include/world/Direction.h" 1
       

typedef enum {
    Direction_West,
    Direction_East,
    Direction_Bottom,
    Direction_Top,
    Direction_North,
    Direction_South,
    Direction_Invalid
} Direction;

typedef enum {
    Axis_X,
    Axis_Y,
    Axis_Z
}Axis;

extern int DirectionToOffset[7][3];
extern Direction DirectionOpposite[7];
extern Axis DirectionToAxis[7];
# 2 "C:/Users/Elias/CLionProjects/3DSCraft/source/world/Direction.c" 2

int DirectionToOffset[7][3] = {{-1, 0, 0}, {1, 0, 0}, {0, -1, 0}, {0, 1, 0}, {0, 0, -1}, {0, 0, 1}, {0, 0, 0}};
Direction DirectionOpposite[7] = {Direction_East, Direction_West, Direction_Top, Direction_Bottom, Direction_South, Direction_North, Direction_Invalid};
Axis DirectionToAxis[7] = {Axis_X, Axis_X, Axis_Y, Axis_Y, Axis_Z, Axis_Z, Axis_X};

#pragma once

#include <cstdint>
#include <3ds/types.h>

namespace FastColor {

    namespace RGBA8 {
        inline u8 alpha(u32 color) {
            return (color >> 24) & 0xFF;
        }

        inline u8 red(u32 color) {
            return (color >> 16) & 0xFF;
        }

        inline u8 green(u32 color) {
            return (color >> 8) & 0xFF;
        }

        inline u8 blue(u32 color) {
            return color & 0xFF;
        }

        inline u32 color(u8 r, u8 g, u8 b, u8 a) {
            return (a << 24) | (r << 16) | (g << 8) | b;
        }

        inline u32 multiply(u32 color1, u32 color2) {
            u8 a = alpha(color1) * alpha(color2) / 255;
            u8 r = red(color1) * red(color2) / 255;
            u8 g = green(color1) * green(color2) / 255;
            u8 b = blue(color1) * blue(color2) / 255;
            return color(r, g, b, a);
        }

        inline u32 lerp(float t, u32 color1, u32 color2) {
            u8 a = u8(alpha(color1) + t * (alpha(color2) - alpha(color1)));
            u8 r = u8(red(color1) + t * (red(color2) - red(color1)));
            u8 g = u8(green(color1) + t * (green(color2) - green(color1)));
            u8 b = u8(blue(color1) + t * (blue(color2) - blue(color1)));
            return color(r, g, b, a);
        }
    }

    namespace Mth {
        inline u8 lerpInt(float t, u8 a, u8 b) {
            return (u8)(a + t * (b - a));
        }
    }
}

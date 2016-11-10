#import "UIColor+Addition.h"

@implementation UIColor (Addition)

+ (instancetype)colorWithHex:(uint32_t)hex
{
    uint8_t r = (hex & 0xff0000) >> 16;
    uint8_t g = (hex & 0x00ff00) >> 8;
    uint8_t b = hex & 0x0000ff;

    return [self colorWithRed:r green:g blue:b];
}

+ (instancetype)randomColor
{
    return [UIColor colorWithRed:arc4random_uniform(256) green:arc4random_uniform(256) blue:arc4random_uniform(256)];
}

+ (instancetype)colorWithRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue
{
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:1.0];
}
///主题色
+ (instancetype) themeColor
{
    return [UIColor orangeColor];
}
///背景色，深灰
+ (instancetype) backgroundColor
{
    return [UIColor darkGrayColor];
}
///前景色，浅灰
+ (instancetype) foregroundColor
{
    return [UIColor lightGrayColor];
}
///淡白色
+ (instancetype) littleWhite
{
    return [UIColor colorWithWhite:237/255.0 alpha:1];
}

@end

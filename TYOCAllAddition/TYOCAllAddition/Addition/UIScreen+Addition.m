#import "UIScreen+Addition.h"

@implementation UIScreen (Addition)

+ (CGFloat)screenWidth
{
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)screenHeight
{
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)scale
{
    return [UIScreen mainScreen].scale;
}

@end

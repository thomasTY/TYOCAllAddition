#import "UIImageView+Addition.h"

@implementation UIImageView (Addition)
+ (instancetype)imageName:(NSString *)imgName
{
    return [[UIImageView alloc] initWithImage:[UIImage imageNamed:imgName]];
}
@end

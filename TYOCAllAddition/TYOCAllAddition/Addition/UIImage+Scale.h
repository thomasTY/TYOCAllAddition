#import <UIKit/UIKit.h>

@interface UIImage (Scale)

/** 把图片缩小到指定的宽度范围内为止 */
- (UIImage *)scaleImageWithWidth:(CGFloat)width;

@end

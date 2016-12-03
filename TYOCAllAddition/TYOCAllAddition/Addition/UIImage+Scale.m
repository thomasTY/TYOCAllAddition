
#import "UIImage+Scale.h"

@implementation UIImage (Scale)

- (UIImage *)scaleImageWithWidth:(CGFloat)width
{
    if (self.size.width <width || width <= 0)
    {
        return self;
    }
    
    CGFloat scale = self.size.width/width;
    CGFloat height = self.size.height/scale;
    
    CGRect rect = CGRectMake(0, 0, width, height);
    UIGraphicsBeginImageContext(rect.size);
    [self drawInRect:rect];
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultImage;
}

@end

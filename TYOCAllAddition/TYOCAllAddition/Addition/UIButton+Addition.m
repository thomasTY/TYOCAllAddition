#import "UIButton+Addition.h"

@implementation UIButton (Addition)

+ (instancetype)buttonText:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor
{
    
    UIButton *button = [[self alloc] init];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:normalColor forState:UIControlStateNormal];
    [button setTitleColor:selectedColor forState:UIControlStateSelected];
    
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    [button sizeToFit];
    
    return button;
}

+ (instancetype)buttonText:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor target:(id)target action:(SEL)action
{
    UIButton *button = [[self alloc] init];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:normalColor forState:UIControlStateNormal];
    
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    [button addTarget:(target) action:(action) forControlEvents:UIControlEventTouchUpInside];
    
    [button sizeToFit];
    
    return button;
}

+ (instancetype)buttonText:(NSString *)title fontSize:(CGFloat)fontSize fontColor:(UIColor *)fontColor backgroundImgName:(NSString *)backgroundImgName target:(nullable id)target action:(nonnull SEL)action
{
    UIButton *button = [[self alloc] init];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
    
    [button setTitleColor:fontColor forState:UIControlStateNormal];
    
    [button setBackgroundImage:[UIImage imageNamed:backgroundImgName] forState:UIControlStateNormal];
    
    [button sizeToFit];
    [button addTarget:(target) action:(action) forControlEvents:UIControlEventTouchUpInside];
    
    return button;
    
}


+ (instancetype)buttonText:(NSString *)title imgName:(NSString *)imgName hasHighlightImg:(BOOL)hasHighlightImg target:(nullable id)target action:(nonnull SEL)action
{
    UIButton *button = [[self alloc] init];
    
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    
    [button setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
    if (hasHighlightImg)
    {
        NSString * hightlightImg = [NSString stringWithFormat:@"%@_highlighted",imgName];
        [button setImage:[UIImage imageNamed:hightlightImg] forState:UIControlStateHighlighted];
    }
    
    [button sizeToFit];
    
    [button addTarget:(target) action:(action) forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}



@end

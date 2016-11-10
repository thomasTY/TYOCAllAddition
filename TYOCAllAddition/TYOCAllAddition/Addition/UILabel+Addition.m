#import "UILabel+Addition.h"

@implementation UILabel (Addition)
/**
 返回一个label
 
 @param text     显示的文字
 @param color    文字颜色
 @param fontSize 文字字体
 */
+ (instancetype)makeLabelText:(NSString *)text andTextColor:(UIColor *)color andTextFont:(CGFloat)fontSize {
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.textColor = color;
    label.font = [UIFont systemFontOfSize:fontSize];
    return label;
}
@end

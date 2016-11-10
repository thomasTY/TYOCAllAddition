#import <UIKit/UIKit.h>

@interface UIButton (Addition)

/// 创建文本按钮
///
/// @param title         文本
/// @param fontSize      字体大小
/// @param normalColor   默认颜色
/// @param selectedColor 选中颜色
///
/// @return UIButton
+ (instancetype)buttonText:(NSString *)title fontSize:(CGFloat)fontSize normalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor;

/**
 创建按钮文本、字色、字号、背景图、事件

 @param title             文本
 @param fontSize          字号
 @param fontColor         字色
 @param backgroundImgName 背景图
 @param target            事件响应者
 @param action            响应事件

 @return 按钮实例
 */
+ (instancetype)buttonText:(NSString *)title fontSize:(CGFloat)fontSize fontColor:(UIColor *)fontColor backgroundImgName:(NSString *)backgroundImgName target:(id)target action:(SEL)action;

/**
 创建按钮文本、图片、高亮图片、事件

 @param title           文本
 @param imgName         图片
 @param hasHighlightImg 是否设置同名高亮图片
 @param target          事件响应者
 @param action          响应事件

 @return 按钮实例
 */
+ (instancetype)buttonText:(NSString *)title imgName:(NSString *)imgName hasHighlightImg:(BOOL)hasHighlightImg target:(id)target action:(SEL)action;

@end

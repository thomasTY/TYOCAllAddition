
#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Addition)

/**
 快速创建BarButtonItem，标题、图片（包括高亮图）、事件响应者、响应事件

 @param title    标题
 @param imgName  图片
 @param target   事件
 @param Selector 响应事件

 @return BarButtonItem实例
 */
+ (instancetype)BarButtonItemTitle:(NSString *)title ImageName:(NSString *)imgName target:(id)target action:(SEL)Selector;

@end


#import "UIBarButtonItem+Addition.h"
#import "UIButton+Addition.h"

@implementation UIBarButtonItem (Addition)
+ (instancetype)BarButtonItemTitle:(NSString *)title ImageName:(NSString *)imgName target:(id)target action:(SEL)Selector
{
    UIBarButtonItem * barButtonItem = [UIBarButtonItem new];
    UIButton * button = [UIButton buttonText:title imgName:imgName hasHighlightImg:YES target:target action:Selector];
    barButtonItem.customView = button;
    return barButtonItem;
}
@end

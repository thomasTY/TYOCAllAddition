
#import <Foundation/Foundation.h>

@interface NSString (path)
///获取沙盒调用者对应的caches的路径
- (NSString *)appendCaches;
///获取沙盒调用者对应的NSDocument的路径
- (NSString *)appendDocument;
///获取沙盒调用者对应的Temporary的路径
- (NSString *)appendTempPath;

@end

#import "NSString+path.h"

@implementation NSString (path)

- (NSString *)appendCaches
{
    
    NSString * cachesPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
    
    NSString * name = [self lastPathComponent];
 
    NSString * filePath = [cachesPath stringByAppendingPathComponent:name];

    return filePath;
}

- (NSString *)appendDocument
{
    NSString * cachesPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    
    NSString * name = [self lastPathComponent];
    
    NSString * filePath = [cachesPath stringByAppendingPathComponent:name];
    
    return filePath;

}

- (NSString *)appendTempPath
{
    NSString *path = NSTemporaryDirectory();
    NSString *name = [self lastPathComponent];
    NSString *filePath = [path stringByAppendingPathComponent:name];
    
    return filePath;
}
@end

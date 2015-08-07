# coding: UTF-8

#import "EnsureType.h"
#import <Foundation/NSKeyedArchiver.h>

@implementation EnsureType

// 基本数据类型
// (char、unsigned char、short、unsigned short、long、unsigned long、unsigned long long、uinteger、int、float、double、longlong、integer)

// int
- (int)ensureIntType:(id)value
{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value intValue];
    }
    // NSString ->NSNumber
    if ([value isKindOfClass:[NSString class]]) {
        NSScanner *scan = [NSScanner scannerWithString:value];
        int val;
        if ([scan scanInt:&val] && [scan isAtEnd]) {
            return val;
        }
    }
     NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return 0;
}

//unsigned int
- (unsigned int)ensureUnsignedIntType:(id)value{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value unsignedIntValue];
    }
    // NSString ->NSNumber
    if ([value isKindOfClass:[NSString class]]) {
        NSScanner *scan = [NSScanner scannerWithString:value];
        unsigned long long val;
        if ([scan scanUnsignedLongLong:&val] && [scan isAtEnd]) {
            return (unsigned int)val;
        }
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return 0;
}

// short
- (short)ensureShortType:(id)value{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value shortValue];
    }
    // NSString ->NSNumber
    if ([value isKindOfClass:[NSString class]]) {
        NSScanner *scan = [NSScanner scannerWithString:value];
        int val;
        if ([scan scanInt:&val] && [scan isAtEnd]) {
            return (short)val;
        }
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return 0;
}

// unsigned short
- (unsigned short)ensureUnsignedShortType:(id)value{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value shortValue];
    }
    // NSString ->NSNumber
    if ([value isKindOfClass:[NSString class]]) {
        NSScanner *scan = [NSScanner scannerWithString:value];
        unsigned long long val;
        if ([scan scanUnsignedLongLong:&val] && [scan isAtEnd]) {
            return (unsigned short)val;
        }
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return 0;
}

// long
- (long)ensureLongType:(id)value{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value longValue];
    }
    // NSString ->NSNumber
    if ([value isKindOfClass:[NSString class]]) {
        NSScanner *scan = [NSScanner scannerWithString:value];
        long long val;
        if ([scan scanLongLong:&val] && [scan isAtEnd]) {
            return (long)val;
        }
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return 0;
}

// unsigned long
- (unsigned long)ensureUnsignedLongType:(id)value{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value unsignedLongValue];
    }
    // NSString ->NSNumber
    if ([value isKindOfClass:[NSString class]]) {
        NSScanner *scan = [NSScanner scannerWithString:value];
        unsigned long long val;
        if ([scan scanUnsignedLongLong:&val] && [scan isAtEnd]) {
            return (unsigned long)val;
        }
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return 0;
}

// long long
- (long long)ensureLongLongType:(id)value{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value longLongValue];
    }
    // NSString ->NSNumber
    if ([value isKindOfClass:[NSString class]]) {
        NSScanner *scan = [NSScanner scannerWithString:value];
        long long val;
        if ([scan scanLongLong:&val] && [scan isAtEnd]) {
            return val;
        }
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return 0;
}

// unsigned longlong
- (unsigned long long)ensureUnsignedLongLongType:(id)value{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value unsignedLongLongValue];
    }
    // NSString ->NSNumber
    if ([value isKindOfClass:[NSString class]]) {
        NSScanner *scan = [NSScanner scannerWithString:value];
        unsigned long long val;
        if ([scan scanUnsignedLongLong:&val] && [scan isAtEnd]) {
            return (unsigned int)val;
        }
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return 0;
}

// NSInteger
- (NSInteger)ensureIntegerType:(id)value
{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value integerValue];
    }
    // NSString->NSInteger
    if ([value isKindOfClass:[NSString class]]) {
        NSScanner *scan = [NSScanner scannerWithString:value];
        NSInteger val;
        if ([scan scanInteger:&val] && [scan isAtEnd]) {
            return val;
        }
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return 0;
}

// NSUInteger
- (NSUInteger)ensureUIntegerType:(id)value{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value unsignedIntegerValue];
    }
    // NSString ->NSNumber
    if ([value isKindOfClass:[NSString class]]) {
        NSScanner *scan = [NSScanner scannerWithString:value];
        unsigned long long val;
        if ([scan scanUnsignedLongLong:&val] && [scan isAtEnd]) {
            return (NSUInteger)val;
        }
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return 0;
}

// float
- (float)ensureFloatType:(id)value{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value floatValue];
    }
    // NSString ->NSNumber
    if ([value isKindOfClass:[NSString class]]) {
        NSScanner *scan = [NSScanner scannerWithString:value];
        long long val;
        if ([scan scanLongLong:&val] && [scan isAtEnd]) {
            return (float)val;
        }
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return 0;
}
// double
- (double)ensureDoubleType:(id)value{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value doubleValue];
    }
    // NSString ->NSNumber
    if ([value isKindOfClass:[NSString class]]) {
        NSScanner *scan = [NSScanner scannerWithString:value];
        long long val;
        if ([scan scanLongLong:&val] && [scan isAtEnd]) {
            return (double)val;
        }
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return 0;
}

// BOOL
- (BOOL)ensureBoolType:(id)value
{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return NO;
    }
    // NSNumber->BOOL
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value boolValue];
    }
    // NSString->BOOL
    if ([value isKindOfClass:[NSString class]]) {
        if ([value isEqualToString:@"true"]) {
            return YES;
        }
        return NO;
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return NO;
}

// NSString
- (NSString *)ensureStringType:(id)value
{
    if(!value) {
        return nil;
    }
    if ([value isKindOfClass:[NSString class]]) {
        return  value;
    }
    // NSNumber->NSString
    if ([value respondsToSelector:@selector(stringValue)])
    {
        return [value stringValue];
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return nil;
}

// NSNumber
- (NSNumber *)ensureNumberType:(id)value
{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return nil;
    }
    if ([value isKindOfClass:[NSNumber class]])
    {
        return value;
    }
    // NSString->NSNumber
    if ([value isKindOfClass:[NSString class]])
    {
        NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
        return [numberFormatter numberFromString:value];
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return nil;
}

// NSURL
- (NSURL *)ensureURLType:(id)value
{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return nil;
    }
    if ([value isKindOfClass:[NSURL class]]) {
        return value;
    }
    // NSString->NSURL
    if ([value respondsToSelector:@selector(URLWithString:)]) {
        return [NSURL URLWithString:(NSString *)value];
    }
    NSAssert([value isKindOfClass:[NSString class]], @"数据不是NSString类型，无法向自定义类型转换");
    return nil;
}

// NSData
- (NSData *)ensureDataType:(id)value
{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return nil;
    }
    // NSString->NSData
    if ([value respondsToSelector:@selector(dataUsingEncoding:)]) {
        return [value dataUsingEncoding:NSUTF8StringEncoding];
    }
    // NSNumber->NSData
    if ([value isKindOfClass:[NSNumber class]]) {
        return [NSKeyedArchiver archivedDataWithRootObject:value];
    }
    NSAssert(([value isKindOfClass:[NSNumber class]]) || ([value isKindOfClass:[NSString class]]), @"数据不是NSNumber或者NSString类型，无法向自定义类型转换");
    return nil;
}
// NSDictionary
- (NSDictionary *)ensureDictionaryType:(id)value
{
    if ((!value) || ([value isKindOfClass:[NSNull class]])) {
        return nil;
    }
    if ([value isKindOfClass:[NSDictionary class]]) {
        return value;
    }
    NSAssert([value isKindOfClass:[NSDictionary class]], @"数据不是NSDictionary类型，无法向自定义类型转换");
    return nil;
}
@end

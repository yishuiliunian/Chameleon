//
//  BWPay.m
//  BWPay
//
//  Created by baidu
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "BWPay.h"
#import "EnsureType.h"
#import "UserInfo.h"

@implementation BWPay

- (void)setValue:(id)value forKey:(NSString *)key
{
    if (NO){}
    // char
    else if ([key isEqualToString:@"bwchar"])
    {
        _bwchar = ensureCharType(value);
    }
    // short
    else if ([key isEqualToString:@"bwshort"])
    {
        _bwshort = ensureShortType(value);
    }
    // long
    else if ([key isEqualToString:@"bwlong"])
    {
        _bwlong = ensureLongType(value);
    }
    // longlong
    else if ([key isEqualToString:@"bwlonglong"])
    {
        _bwlonglong = ensureLongLongType(value);
    }
    // int
    else if ([key isEqualToString:@"bwint"])
    {
        _bwint = ensureIntType(value);
    }
    // float
    else if ([key isEqualToString:@"bwfloat"])
    {
        _bwfloat = ensureFloatType(value);
    }
    // double
    else if ([key isEqualToString:@"bwdouble"])
    {
        _bwdouble = ensureDoubleType(value);
    }
    // NSURL
    else if ([key isEqualToString:@"bwurl"])
    {
        _bwurl = ensureURLType(value);
    }
    // NSString
    else if ([key isEqualToString:@"bwstring"])
    {
        _bwstring = ensureStringType(value);
     }
    // NSData
    else if ([key isEqualToString:@"bwdata"])
    {
        _bwdata = ensureDataType(value);
    }
    // NSNumber
    else if ([key isEqualToString:@"bwnumber"])
    {
        _bwnumber = ensureNumberType(value);
    }
    // NSArray
    else if ([key isEqualToString:@"bwarray"])
    {
#warning 迁移
        if ((!value) || ([value isKindOfClass:[NSNull class]]))
        return;
        NSAssert([value isKindOfClass:[NSArray class]], @"bwarray从服务器传过来的数据不是NSArray类型，请检查");
        NSArray* array = (NSArray*)value;
        NSMutableArray* objects = [NSMutableArray new];
        for (id obj in array) {
            if ([obj isKindOfClass:[NSNull class]]) {
                return;
            } 
            // NSString类型
            if (ensureNumberType(obj))
            {
                [objects addObject:ensureStringType(obj)];
            }
        }
        _bwarray = objects;
    }
    // NSDictionary
    else if ([key isEqualToString:@"bwdic"])
    {
        _bwdic = ensureDictionaryType(value);
    }
    // 自定义类型
    else if ([key isEqualToString:@"bwCustomObj"])
    {
#warning 置空
        if ((!value) || ([value isKindOfClass:[NSNull class]])) {
            _bwCustomObj = nil;
            return;
        }
        NSAssert([value isKindOfClass:[NSDictionary class]], @"数据不是dictionary类型，无法向自定义类型转化");
        UserInfo* transObj = [[UserInfo alloc] init];
        [transObj setValuesForKeysWithDictionary:value];
        _bwCustomObj = transObj;
    }
    // BOOL
    else if ([key isEqualToString:@"bwbool"])
    {
        _bwbool = ensureBoolType(value);
    }
    // unsigned char
    else if ([key isEqualToString:@"bwuchar"])
    {
        _bwuchar = ensureUnsignedCharType(value);
    }
    // NSInteger
    else if ([key isEqualToString:@"bwinteger"])
    {
        _bwinteger = ensureIntegerType(value);
    }
    // NSUInteger
    else if ([key isEqualToString:@"bwuinteger"])
    {
        _bwuinteger = ensureUIntegerType(value);
    }
    // int8_t
    else if ([key isEqualToString:@"bwinta"])
    {
        _bwinta = ensureCharType(value);
    }
    // int16_t
    else if ([key isEqualToString:@"bwintb"])
    {
        _bwintb = ensureShortType(value);
    }
    // int32_t
    else if ([key isEqualToString:@"bwintc"])
    {
        _bwintc = ensureIntType(value);
    }
    // int64
    else if ([key isEqualToString:@"bwintd"])
    {
        _bwintd = ensureLongLongType(value);
    }
    // unsigned short
    else if ([key isEqualToString:@"bwushort"])
    {
        _bwushort = ensureUnsignedCharType(value);
    }
    // uint8_t
    else if ([key isEqualToString:@"bwuinta"])
    {
        _bwuinta = ensureUnsignedCharType(value);
    }
    // uint16_t
    else if ([key isEqualToString:@"bwuintb"])
    {
        _bwuintb = ensureUnsignedShortType(value);
    }
    // uint32_t
    else if ([key isEqualToString:@"bwuintc"])
    {
        _bwuintc = ensureUnsignedIntType(value);
    }
    // uint64_t
    else if ([key isEqualToString:@"bwuintd"])
    {
        _bwuintd = ensureUnsignedLongLongType(value);
    }
    // unsigned long
    else if ([key isEqualToString:@"bwulong"])
    {
        _bwulong = ensureUnsignedLongType(value);
    }
    // unsigned long long
    else if ([key isEqualToString:@"bwulonglong"])
    {
        _bwulonglong = ensureUnsignedLongLongType(value);
    }
    // unsigned int
    else if ([key isEqualToString:@"bwuint"])
    {
        _bwuint = ensureUnsignedIntType(value);
    }
}

@end

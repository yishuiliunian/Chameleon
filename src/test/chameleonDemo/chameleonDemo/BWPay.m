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

- (id)copyWithZone:(NSZone *)zone
{
    BWPay *copyedModel = [[self.class allocWithZone:zone] init];
    copyedModel.bwchar = self.bwchar;
    copyedModel.bwshort = self.bwshort;
    copyedModel.bwlong = self.bwlong;
    copyedModel.bwlonglong = self.bwlonglong;
    copyedModel.bwint = self.bwint;
    copyedModel.bwfloat = self.bwfloat;
    copyedModel.bwdouble = self.bwdouble;
    copyedModel.bwurl = self.bwurl.copy;
    copyedModel.bwstring = self.bwstring.copy;
    copyedModel.bwdata = self.bwdata.copy;
    copyedModel.bwnumber = self.bwnumber.copy;
    copyedModel.bwdic = [[NSDictionary alloc]initWithDictionary:self.bwdic copyItems:YES];
    copyedModel.bwCustomObj = self.bwCustomObj.copy;
    copyedModel.bwstringarray = [[NSArray alloc]initWithArray:self.bwstringarray copyItems:YES];
    copyedModel.bwnumberarray = [[NSArray alloc]initWithArray:self.bwnumberarray copyItems:YES];
    copyedModel.bwobjarray = [[NSArray alloc]initWithArray:self.bwobjarray copyItems:YES];
    copyedModel.bwbool = self.bwbool;
    copyedModel.bwuchar = self.bwuchar;
    copyedModel.bwinteger = self.bwinteger;
    copyedModel.bwuinteger = self.bwuinteger;
    copyedModel.bwinta = self.bwinta;
    copyedModel.bwintb = self.bwintb;
    copyedModel.bwintc = self.bwintc;
    copyedModel.bwintd = self.bwintd;
    copyedModel.bwushort = self.bwushort;
    copyedModel.bwuinta = self.bwuinta;
    copyedModel.bwuintb = self.bwuintb;
    copyedModel.bwuintc = self.bwuintc;
    copyedModel.bwuintd = self.bwuintd;
    copyedModel.bwulong = self.bwulong;
    copyedModel.bwulonglong = self.bwulonglong;
    copyedModel.bwuint = self.bwuint;
    return copyedModel;
}

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
    // NSDictionary
    else if ([key isEqualToString:@"bwdic"])
    {
        _bwdic = ensureDictionaryType(value);
    }
    // 自定义类型
    else if ([key isEqualToString:@"bwCustomObj"])
    {
        if ((!value) || ([value isKindOfClass:[NSNull class]])) {
            _bwCustomObj = nil;
            return;
        }
        NSAssert([value isKindOfClass:[NSDictionary class]], @"数据不是dictionary类型，无法向自定义类型转化");
        UserInfo* transObj = [[UserInfo alloc] init];
        [transObj setValuesForKeysWithDictionary:value];
        _bwCustomObj = transObj;
    }
    // NSArray
    else if ([key isEqualToString:@"bwstringarray"])
    {
        if (nil == ensureArrayType(value))
        {
            _bwstringarray = nil;
            return;
        }
        NSArray* array = (NSArray*)value;
        NSMutableArray* objects = [NSMutableArray new];
        for (id obj in array) { 
            // NSString类型
            if (ensureStringType(obj))
            {
                [objects addObject:ensureStringType(obj)];
            }
        }
        _bwstringarray = objects;
    }
    // NSArray
    else if ([key isEqualToString:@"bwnumberarray"])
    {
        if (nil == ensureArrayType(value))
        {
            _bwnumberarray = nil;
            return;
        }
        NSArray* array = (NSArray*)value;
        NSMutableArray* objects = [NSMutableArray new];
        for (id obj in array) { 
            // NSNumber类型
            if (ensureNumberType(obj))
            {
                [objects addObject:ensureNumberType(obj)];
            }
        }
        _bwnumberarray = objects;
    }
    // NSArray
    else if ([key isEqualToString:@"bwobjarray"])
    {
        if (nil == ensureArrayType(value))
        {
            _bwobjarray = nil;
            return;
        }
        NSArray* array = (NSArray*)value;
        NSMutableArray* objects = [NSMutableArray new];
        for (id obj in array) { 
            // 自定义类型
            NSAssert([obj isKindOfClass:[NSDictionary class]], @"数据不是dictionary类型，无法向自定义类型转化");
            UserInfo* transObj = [[UserInfo alloc] init];
            [transObj setValuesForKeysWithDictionary:obj];
            [objects addObject:transObj];
        }
        _bwobjarray = objects;
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
        _bwushort = ensureUnsignedShortType(value);
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

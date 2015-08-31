//
//  BWPay.m
//  BWPay
//
//  Created by baidu
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "BWPay.h"
#import "NSObject+TODictionary.h"
#import "NSObject+DeepCopy.h"
#import "EnsureType.h"
#import "UserInfo.h"

@implementation BWPay

- (id)toDictionaryValue
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    #define SET_NIL_OBJECT(obj, key)     if (obj) {         [dic setObject:obj  forKey:key];    }
    SET_NIL_OBJECT([NSNumber numberWithChar:self.bwchar],@"bwchar");
    SET_NIL_OBJECT([NSNumber numberWithShort:self.bwshort],@"bwshort");
    SET_NIL_OBJECT([NSNumber numberWithLong:self.bwlong],@"bwlong");
    SET_NIL_OBJECT([NSNumber numberWithLongLong:self.bwlonglong],@"bwlonglong");
    SET_NIL_OBJECT([NSNumber numberWithInt:self.bwint],@"bwint");
    SET_NIL_OBJECT([NSNumber numberWithFloat:self.bwfloat],@"bwfloat");
    SET_NIL_OBJECT([NSNumber numberWithDouble:self.bwdouble],@"bwdouble");
    SET_NIL_OBJECT([self.bwurl toDictionaryValue],@"bwurl");
    SET_NIL_OBJECT([self.bwstring toDictionaryValue],@"bwstring");
    SET_NIL_OBJECT([self.bwdata toDictionaryValue],@"bwdata");
    SET_NIL_OBJECT([self.bwnumber toDictionaryValue],@"bwnumber");
    SET_NIL_OBJECT([self.bwdic toDictionaryValue],@"bwdic");
    SET_NIL_OBJECT([self.bwCustomObj toDictionaryValue],@"bwCustomObj");
    SET_NIL_OBJECT([self.bwstringarray toDictionaryValue],@"bwstringarray");
    SET_NIL_OBJECT([self.bwnumberarray toDictionaryValue],@"bwnumberarray");
    SET_NIL_OBJECT([self.bwobjarray toDictionaryValue],@"bwobjarray");
    SET_NIL_OBJECT([NSNumber numberWithBool:self.bwbool] ,@"bwbool");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedChar:self.bwuchar],@"bwuchar");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedShort:self.bwushort],@"bwushort");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedInt:self.bwuint],@"bwuint");
    SET_NIL_OBJECT([NSNumber numberWithInteger:self.bwinteger],@"bwinteger");
    SET_NIL_OBJECT([NSNumber numberWithInteger:self.bwuinteger],@"bwuinteger");
    SET_NIL_OBJECT([NSNumber numberWithChar:self.bwinta],@"bwinta");
    SET_NIL_OBJECT([NSNumber numberWithShort:self.bwintb],@"bwintb");
    SET_NIL_OBJECT([NSNumber numberWithInt:self.bwintc],@"bwintc");
    SET_NIL_OBJECT([NSNumber numberWithLongLong:self.bwintd],@"bwintd");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedChar:self.bwuinta],@"bwuinta");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedShort:self.bwuintb],@"bwuintb");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedInt:self.bwuintc],@"bwuintc");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedLongLong:self.bwuintd],@"bwuintd");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedLong:self.bwulong],@"bwulong");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedLongLong:self.bwulonglong],@"bwulonglong");
    return dic;
}

- (id)toServerDictionaryValue
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    #define SET_NIL_OBJECT(obj, key)     if (obj) {         [dic setObject:obj  forKey:key];    }
    SET_NIL_OBJECT([NSNumber numberWithChar:self.bwchar],@"bwchar");
    SET_NIL_OBJECT([NSNumber numberWithShort:self.bwshort],@"bwshort");
    SET_NIL_OBJECT([NSNumber numberWithLong:self.bwlong],@"bwlong");
    SET_NIL_OBJECT([NSNumber numberWithLongLong:self.bwlonglong],@"bwlonglong");
    SET_NIL_OBJECT([NSNumber numberWithInt:self.bwint],@"bwint");
    SET_NIL_OBJECT([NSNumber numberWithFloat:self.bwfloat],@"bwfloat");
    SET_NIL_OBJECT([NSNumber numberWithDouble:self.bwdouble],@"bwdouble");
    SET_NIL_OBJECT([self.bwurl toDictionaryValue],@"bwurl");
    SET_NIL_OBJECT([self.bwstring toDictionaryValue],@"bwstring");
    SET_NIL_OBJECT([self.bwdata toDictionaryValue],@"bwdata");
    SET_NIL_OBJECT([self.bwnumber toDictionaryValue],@"bwnumber");
    SET_NIL_OBJECT([self.bwdic toDictionaryValue],@"bwdic");
    SET_NIL_OBJECT([self.bwCustomObj toDictionaryValue],@"bwCustomObj");
    SET_NIL_OBJECT([self.bwstringarray toDictionaryValue],@"bwstringarray");
    SET_NIL_OBJECT([self.bwnumberarray toDictionaryValue],@"bwnumberarray");
    SET_NIL_OBJECT([self.bwobjarray toDictionaryValue],@"bwobjarray");
    SET_NIL_OBJECT([NSNumber numberWithBool:self.bwbool],@"bwbool");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedChar:self.bwuchar],@"bwuchar");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedShort:self.bwushort],@"bwushort");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedInt:self.bwuint],@"bwuint");
    SET_NIL_OBJECT([NSNumber numberWithInteger:self.bwinteger],@"bwinteger");
    SET_NIL_OBJECT([NSNumber numberWithInteger:self.bwuinteger],@"bwuinteger");
    SET_NIL_OBJECT([NSNumber numberWithChar:self.bwinta],@"bwinta");
    SET_NIL_OBJECT([NSNumber numberWithShort:self.bwintb],@"bwintb");
    SET_NIL_OBJECT([NSNumber numberWithInt:self.bwintc],@"bwintc");
    SET_NIL_OBJECT([NSNumber numberWithLongLong:self.bwintd],@"bwintd");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedChar:self.bwuinta],@"bwuinta");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedShort:self.bwuintb],@"bwuintb");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedInt:self.bwuintc],@"bwuintc");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedLongLong:self.bwuintd],@"bwuintd");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedLong:self.bwulong],@"bwulong");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedLongLong:self.bwulonglong],@"bwulonglong");
    return dic;
}

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
    copyedModel.bwdic = self.bwdic.deepCopy;
    copyedModel.bwCustomObj = self.bwCustomObj.copy;
    copyedModel.bwstringarray = self.bwstringarray.deepCopy;
    copyedModel.bwnumberarray = self.bwnumberarray.deepCopy;
    copyedModel.bwobjarray = self.bwobjarray.deepCopy;
    copyedModel.bwbool = self.bwbool;
    copyedModel.bwuchar = self.bwuchar;
    copyedModel.bwushort = self.bwushort;
    copyedModel.bwuint = self.bwuint;
    copyedModel.bwinteger = self.bwinteger;
    copyedModel.bwuinteger = self.bwuinteger;
    copyedModel.bwinta = self.bwinta;
    copyedModel.bwintb = self.bwintb;
    copyedModel.bwintc = self.bwintc;
    copyedModel.bwintd = self.bwintd;
    copyedModel.bwuinta = self.bwuinta;
    copyedModel.bwuintb = self.bwuintb;
    copyedModel.bwuintc = self.bwuintc;
    copyedModel.bwuintd = self.bwuintd;
    copyedModel.bwulong = self.bwulong;
    copyedModel.bwulonglong = self.bwulonglong;
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
    // unsigned short
    else if ([key isEqualToString:@"bwushort"])
    {
        _bwushort = ensureUnsignedShortType(value);
    }
    // unsigned int
    else if ([key isEqualToString:@"bwuint"])
    {
        _bwuint = ensureUnsignedIntType(value);
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
}

@end

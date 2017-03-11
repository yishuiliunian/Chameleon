//
//  BWPay.m
//  BWPay
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//

#import "BWPay.h"
#import "BWTODictionary.h"
#import "BWDeepCopy.h"
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
    else if ([key isEqualToString:@"bwchar"])
    {
        _bwchar = ensureCharType(value);
    }
    else if ([key isEqualToString:@"bwshort"])
    {
        _bwshort = ensureShortType(value);
    }
    else if ([key isEqualToString:@"bwlong"])
    {
        _bwlong = ensureLongType(value);
    }
    else if ([key isEqualToString:@"bwlonglong"])
    {
        _bwlonglong = ensureLongLongType(value);
    }
    else if ([key isEqualToString:@"bwint"])
    {
        _bwint = ensureIntType(value);
    }
    else if ([key isEqualToString:@"bwfloat"])
    {
        _bwfloat = ensureFloatType(value);
    }
    else if ([key isEqualToString:@"bwdouble"])
    {
        _bwdouble = ensureDoubleType(value);
    }
    else if ([key isEqualToString:@"bwurl"])
    {
        _bwurl = ensureURLType(value);
    }
    else if ([key isEqualToString:@"bwstring"])
    {
        _bwstring = ensureStringType(value);
     }
    else if ([key isEqualToString:@"bwdata"])
    {
        _bwdata = ensureDataType(value);
    }
    else if ([key isEqualToString:@"bwnumber"])
    {
        _bwnumber = ensureNumberType(value);
    }
    else if ([key isEqualToString:@"bwdic"])
    {
        _bwdic = ensureDictionaryType(value);
    }
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
            if (ensureStringType(obj))
            {
                [objects addObject:ensureStringType(obj)];
            }
        }
        _bwstringarray = objects;
    }
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
            if (ensureNumberType(obj))
            {
                [objects addObject:ensureNumberType(obj)];
            }
        }
        _bwnumberarray = objects;
    }
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
            NSAssert([obj isKindOfClass:[NSDictionary class]], @"数据不是dictionary类型，无法向自定义类型转化");
            UserInfo* transObj = [[UserInfo alloc] init];
            [transObj setValuesForKeysWithDictionary:obj];
            [objects addObject:transObj];
        }
        _bwobjarray = objects;
    }
    else if ([key isEqualToString:@"bwbool"])
    {
        _bwbool = ensureBoolType(value);
    }
    else if ([key isEqualToString:@"bwuchar"])
    {
        _bwuchar = ensureUnsignedCharType(value);
    }
    else if ([key isEqualToString:@"bwushort"])
    {
        _bwushort = ensureUnsignedShortType(value);
    }
    else if ([key isEqualToString:@"bwuint"])
    {
        _bwuint = ensureUnsignedIntType(value);
    }
    else if ([key isEqualToString:@"bwinteger"])
    {
        _bwinteger = ensureIntegerType(value);
    }
    else if ([key isEqualToString:@"bwuinteger"])
    {
        _bwuinteger = ensureUIntegerType(value);
    }
    else if ([key isEqualToString:@"bwinta"])
    {
        _bwinta = ensureCharType(value);
    }
    else if ([key isEqualToString:@"bwintb"])
    {
        _bwintb = ensureShortType(value);
    }
    else if ([key isEqualToString:@"bwintc"])
    {
        _bwintc = ensureIntType(value);
    }
    else if ([key isEqualToString:@"bwintd"])
    {
        _bwintd = ensureLongLongType(value);
    }
    else if ([key isEqualToString:@"bwuinta"])
    {
        _bwuinta = ensureUnsignedCharType(value);
    }
    else if ([key isEqualToString:@"bwuintb"])
    {
        _bwuintb = ensureUnsignedShortType(value);
    }
    else if ([key isEqualToString:@"bwuintc"])
    {
        _bwuintc = ensureUnsignedIntType(value);
    }
    else if ([key isEqualToString:@"bwuintd"])
    {
        _bwuintd = ensureUnsignedLongLongType(value);
    }
    else if ([key isEqualToString:@"bwulong"])
    {
        _bwulong = ensureUnsignedLongType(value);
    }
    else if ([key isEqualToString:@"bwulonglong"])
    {
        _bwulonglong = ensureUnsignedLongLongType(value);
    }
}

@end

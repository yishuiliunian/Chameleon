//
//  BWPay_Sname.m
//  BWPay_Sname
//
//  Created by baidu
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "BWPay_Sname.h"
#import "NSObject+TODictionary.h"
#import "EnsureType.h"
#import "UserInfo.h"

@implementation BWPay_Sname

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
    SET_NIL_OBJECT([NSNumber numberWithBool:self.bwbool] ,@"bwbool");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedChar:self.bwuchar],@"bwuchar");
    SET_NIL_OBJECT([NSNumber numberWithInteger:self.bwinteger],@"bwinteger");
    SET_NIL_OBJECT([NSNumber numberWithInteger:self.bwuinteger],@"bwuinteger");
    SET_NIL_OBJECT([NSNumber numberWithChar:self.bwinta],@"bwinta");
    SET_NIL_OBJECT([NSNumber numberWithShort:self.bwintb],@"bwintb");
    SET_NIL_OBJECT([NSNumber numberWithInt:self.bwintc],@"bwintc");
    SET_NIL_OBJECT([NSNumber numberWithLongLong:self.bwintd],@"bwintd");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedShort:self.bwushort],@"bwushort");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedChar:self.bwuinta],@"bwuinta");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedShort:self.bwuintb],@"bwuintb");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedInt:self.bwuintc],@"bwuintc");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedLongLong:self.bwuintd],@"bwuintd");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedLong:self.bwulong],@"bwulong");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedLongLong:self.bwulonglong],@"bwulonglong");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedInt:self.bwuint],@"bwuint");
    SET_NIL_OBJECT([self.bwstringarray toDictionaryValue],@"bwstringarray");
    SET_NIL_OBJECT([self.bwnumberarray toDictionaryValue],@"bwnumberarray");
    SET_NIL_OBJECT([self.bwobjarray toDictionaryValue],@"bwobjarray");
    return dic;
}

- (id)toServerDictionaryValue
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    #define SET_NIL_OBJECT(obj, key)     if (obj) {         [dic setObject:obj  forKey:key];    }
    SET_NIL_OBJECT([NSNumber numberWithChar:self.bwchar],@"bw_char_sname");
    SET_NIL_OBJECT([NSNumber numberWithShort:self.bwshort],@"bw_short_sname");
    SET_NIL_OBJECT([NSNumber numberWithLong:self.bwlong],@"bw_long_sname");
    SET_NIL_OBJECT([NSNumber numberWithLongLong:self.bwlonglong],@"bw_longlong_sname");
    SET_NIL_OBJECT([NSNumber numberWithInt:self.bwint],@"bw_int_sname");
    SET_NIL_OBJECT([NSNumber numberWithFloat:self.bwfloat],@"bw_float_sname");
    SET_NIL_OBJECT([NSNumber numberWithDouble:self.bwdouble],@"bw_double_sname");
    SET_NIL_OBJECT([self.bwurl toDictionaryValue],@"bw_url_sname");
    SET_NIL_OBJECT([self.bwstring toDictionaryValue],@"bw_string_sname");
    SET_NIL_OBJECT([self.bwdata toDictionaryValue],@"bw_data_sname");
    SET_NIL_OBJECT([self.bwnumber toDictionaryValue],@"bw_number_sname");
    SET_NIL_OBJECT([self.bwdic toDictionaryValue],@"bw_dic_sname");
    SET_NIL_OBJECT([self.bwCustomObj toDictionaryValue],@"bw_CustomObj_sname");
    SET_NIL_OBJECT([NSNumber numberWithBool:self.bwbool],@"bw_bool_sname");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedChar:self.bwuchar],@"bw_uchar_sname");
    SET_NIL_OBJECT([NSNumber numberWithInteger:self.bwinteger],@"bw_integer_sname");
    SET_NIL_OBJECT([NSNumber numberWithInteger:self.bwuinteger],@"bw_uinteger_sname");
    SET_NIL_OBJECT([NSNumber numberWithChar:self.bwinta],@"bw_int8_sname");
    SET_NIL_OBJECT([NSNumber numberWithShort:self.bwintb],@"bw_int16_sname");
    SET_NIL_OBJECT([NSNumber numberWithInt:self.bwintc],@"bw_int32_sname");
    SET_NIL_OBJECT([NSNumber numberWithLongLong:self.bwintd],@"bw_int64_sname");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedShort:self.bwushort],@"bw_ushort_sname");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedChar:self.bwuinta],@"bw_uint8_sname");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedShort:self.bwuintb],@"bw_uint16_sname");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedInt:self.bwuintc],@"bw_int32_sname");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedLongLong:self.bwuintd],@"bw_uint64_sname");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedLong:self.bwulong],@"bw_ulong_sname");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedLongLong:self.bwulonglong],@"bw_ulonglong_sname");
    SET_NIL_OBJECT([NSNumber numberWithUnsignedInt:self.bwuint],@"bw_uint_sname");
    SET_NIL_OBJECT([self.bwstringarray toDictionaryValue],@"bw_stringarray_sname");
    SET_NIL_OBJECT([self.bwnumberarray toDictionaryValue],@"bw_numberarray_sname");
    SET_NIL_OBJECT([self.bwobjarray toDictionaryValue],@"bw_objarray_sname");
    return dic;
}

- (id)copyWithZone:(NSZone *)zone
{
    BWPay_Sname *copyedModel = [[self.class allocWithZone:zone] init];
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
    copyedModel.bwstringarray = [[NSArray alloc]initWithArray:self.bwstringarray copyItems:YES];
    copyedModel.bwnumberarray = [[NSArray alloc]initWithArray:self.bwnumberarray copyItems:YES];
    copyedModel.bwobjarray = [[NSArray alloc]initWithArray:self.bwobjarray copyItems:YES];
    return copyedModel;
}

- (void)setValue:(id)value forKey:(NSString *)key
{
    if (NO){}
    // char
    else if ([key isEqualToString:@"bwchar"] || [key isEqualToString:@"bw_char_sname"])
    {
        _bwchar = ensureCharType(value);
    }
    // short
    else if ([key isEqualToString:@"bwshort"] || [key isEqualToString:@"bw_short_sname"])
    {
        _bwshort = ensureShortType(value);
    }
    // long
    else if ([key isEqualToString:@"bwlong"] || [key isEqualToString:@"bw_long_sname"])
    {
        _bwlong = ensureLongType(value);
    }
    // longlong
    else if ([key isEqualToString:@"bwlonglong"] || [key isEqualToString:@"bw_longlong_sname"])
    {
        _bwlonglong = ensureLongLongType(value);
    }
    // int
    else if ([key isEqualToString:@"bwint"] || [key isEqualToString:@"bw_int_sname"])
    {
        _bwint = ensureIntType(value);
    }
    // float
    else if ([key isEqualToString:@"bwfloat"] || [key isEqualToString:@"bw_float_sname"])
    {
        _bwfloat = ensureFloatType(value);
    }
    // double
    else if ([key isEqualToString:@"bwdouble"] || [key isEqualToString:@"bw_double_sname"])
    {
        _bwdouble = ensureDoubleType(value);
    }
    // NSURL
    else if ([key isEqualToString:@"bwurl"] || [key isEqualToString:@"bw_url_sname"])
    {
        _bwurl = ensureURLType(value);
    }
    // NSString
    else if ([key isEqualToString:@"bwstring"] || [key isEqualToString:@"bw_string_sname"])
    {
        _bwstring = ensureStringType(value);
     }
    // NSData
    else if ([key isEqualToString:@"bwdata"] || [key isEqualToString:@"bw_data_sname"])
    {
        _bwdata = ensureDataType(value);
    }
    // NSNumber
    else if ([key isEqualToString:@"bwnumber"] || [key isEqualToString:@"bw_number_sname"])
    {
        _bwnumber = ensureNumberType(value);
    }
    // NSDictionary
    else if ([key isEqualToString:@"bwdic"] || [key isEqualToString:@"bw_dic_sname"])
    {
        _bwdic = ensureDictionaryType(value);
    }
    // 自定义类型
    else if ([key isEqualToString:@"bwCustomObj"] || [key isEqualToString:@"bw_CustomObj_sname"])
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
    // BOOL
    else if ([key isEqualToString:@"bwbool"] || [key isEqualToString:@"bw_bool_sname"])
    {
        _bwbool = ensureBoolType(value);
    }
    // unsigned char
    else if ([key isEqualToString:@"bwuchar"] || [key isEqualToString:@"bw_uchar_sname"])
    {
        _bwuchar = ensureUnsignedCharType(value);
    }
    // NSInteger
    else if ([key isEqualToString:@"bwinteger"] || [key isEqualToString:@"bw_integer_sname"])
    {
        _bwinteger = ensureIntegerType(value);
    }
    // NSUInteger
    else if ([key isEqualToString:@"bwuinteger"] || [key isEqualToString:@"bw_uinteger_sname"])
    {
        _bwuinteger = ensureUIntegerType(value);
    }
    // int8_t
    else if ([key isEqualToString:@"bwinta"] || [key isEqualToString:@"bw_int8_sname"])
    {
        _bwinta = ensureCharType(value);
    }
    // int16_t
    else if ([key isEqualToString:@"bwintb"] || [key isEqualToString:@"bw_int16_sname"])
    {
        _bwintb = ensureShortType(value);
    }
    // int32_t
    else if ([key isEqualToString:@"bwintc"] || [key isEqualToString:@"bw_int32_sname"])
    {
        _bwintc = ensureIntType(value);
    }
    // int64
    else if ([key isEqualToString:@"bwintd"] || [key isEqualToString:@"bw_int64_sname"])
    {
        _bwintd = ensureLongLongType(value);
    }
    // unsigned short
    else if ([key isEqualToString:@"bwushort"] || [key isEqualToString:@"bw_ushort_sname"])
    {
        _bwushort = ensureUnsignedShortType(value);
    }
    // uint8_t
    else if ([key isEqualToString:@"bwuinta"] || [key isEqualToString:@"bw_uint8_sname"])
    {
        _bwuinta = ensureUnsignedCharType(value);
    }
    // uint16_t
    else if ([key isEqualToString:@"bwuintb"] || [key isEqualToString:@"bw_uint16_sname"])
    {
        _bwuintb = ensureUnsignedShortType(value);
    }
    // uint32_t
    else if ([key isEqualToString:@"bwuintc"] || [key isEqualToString:@"bw_int32_sname"])
    {
        _bwuintc = ensureUnsignedIntType(value);
    }
    // uint64_t
    else if ([key isEqualToString:@"bwuintd"] || [key isEqualToString:@"bw_uint64_sname"])
    {
        _bwuintd = ensureUnsignedLongLongType(value);
    }
    // unsigned long
    else if ([key isEqualToString:@"bwulong"] || [key isEqualToString:@"bw_ulong_sname"])
    {
        _bwulong = ensureUnsignedLongType(value);
    }
    // unsigned long long
    else if ([key isEqualToString:@"bwulonglong"] || [key isEqualToString:@"bw_ulonglong_sname"])
    {
        _bwulonglong = ensureUnsignedLongLongType(value);
    }
    // unsigned int
    else if ([key isEqualToString:@"bwuint"] || [key isEqualToString:@"bw_uint_sname"])
    {
        _bwuint = ensureUnsignedIntType(value);
    }
    // NSArray
    else if ([key isEqualToString:@"bwstringarray"] || [key isEqualToString:@"bw_stringarray_sname"])
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
    else if ([key isEqualToString:@"bwnumberarray"] || [key isEqualToString:@"bw_numberarray_sname"])
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
    else if ([key isEqualToString:@"bwobjarray"] || [key isEqualToString:@"bw_objarray_sname"])
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
}

@end

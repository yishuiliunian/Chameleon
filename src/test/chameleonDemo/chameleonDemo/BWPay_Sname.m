//
//  BWPay_Sname.m
//  BWPay_Sname
//
//  Created by baidu
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "BWPay_Sname.h"
#import "EnsureType.h"
#import "UserInfo.h"

@implementation BWPay_Sname

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

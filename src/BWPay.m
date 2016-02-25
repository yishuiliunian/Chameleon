//
//  BWPay.m
//  BWPay
//
//  Created by baidu
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "BWPay.h"
#import "UserInfo.h"

@class UserInfo;
@class UserInfo;


@implementation BWPay

+ (NSDictionary *)modelContainerPropertyGenericClass
{
   return @ {
      @"bw_array_sname":[UserInfo class],
      @"asdfasdfasd":[UserInfo class],
  };
}
+ (NSDictionary *)modelCustomPropertyMapper
{
  return @{
      @"bwlonglong" :@"bw_longlong_sname"",
      @"bwint" :@"bw_int_sname"",
      @"bwfloat" :@"bw_float_sname"",
      @"bwdouble" :@"bw_double_sname"",
      @"bwurl" :@"bw_url_sname"",
      @"bwstring" :@"bw_string_sname"",
      @"bwdata" :@"bw_data_sname"",
      @"bwnumber" :@"bw_number_sname"",
      @"bwarray" :@"bw_array_sname"",
      @"bwdic" :@"bw_dic_sname"",
      @"bwCustomObj" :@"bw_CustomObj_sname"",
      @"bwbool" :@"bw_bool_sname"",
      @"bwuchar" :@"bw_uchar_sname"",
      @"bwinteger" :@"bw_integer_sname"",
      @"bwuinteger" :@"bw_uinteger_sname"",
      @"bwinta" :@"bw_int8_sname"",
      @"bwintb" :@"bw_int16_sname"",
      @"bwintc" :@"bw_int32_sname"",
      @"bwintd" :@"bw_int64_sname"",
      @"bwushort" :@"bw_ushort_sname"",
      @"bwuinta" :@"bw_uint8_sname"",
      @"bwuintb" :@"bw_uint16_sname"",
      @"bwuintc" :@"bw_int32_sname"",
      @"bwuintd" :@"bw_uint64_sname"",
      @"bwulong" :@"bw_ulong_sname"",
      @"bwulonglong" :@"bw_ulonglong_sname"",
      @"bwuint" :@"bw_uint_sname"",
      @"bwarray2" :@"asdfasdfasd"",
  };
}
@end

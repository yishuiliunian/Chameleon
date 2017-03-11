//
//  BWPay_Sname.m
//  BWPay_Sname
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//

#import "BWPay_Sname.h"
#import "UserInfo.h"

@class UserInfo


@implementation BWPay_Sname

+ (NSDictionary *)modelContainerPropertyGenericClass
{
   return @ {
      @"bw_objarray_sname":[UserInfo class],
  };
}
+ (NSDictionary *)modelCustomPropertyMapper
{
  return @{
      @"bwchar" :@"bw_char_sname"",
      @"bwshort" :@"bw_short_sname"",
      @"bwlong" :@"bw_long_sname"",
      @"bwlonglong" :@"bw_longlong_sname"",
      @"bwint" :@"bw_int_sname"",
      @"bwfloat" :@"bw_float_sname"",
      @"bwdouble" :@"bw_double_sname"",
      @"bwurl" :@"bw_url_sname"",
      @"bwstring" :@"bw_string_sname"",
      @"bwdata" :@"bw_data_sname"",
      @"bwnumber" :@"bw_number_sname"",
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
      @"bwstringarray" :@"bw_stringarray_sname"",
      @"bwnumberarray" :@"bw_numberarray_sname"",
      @"bwobjarray" :@"bw_objarray_sname"",
  };
}

- (void) buildRequest
{
    [super buildRequest];
      [self.requestData setNumberParamter:@(self.bwchar) forKey:@"bwchar"];
      [self.requestData setNumberParamter:@(self.bwshort) forKey:@"bwshort"];
      [self.requestData setNumberParamter:@(self.bwlong) forKey:@"bwlong"];
      [self.requestData setNumberParamter:@(self.bwlonglong) forKey:@"bwlonglong"];
      [self.requestData setNumberParamter:@(self.bwint) forKey:@"bwint"];
      [self.requestData setNumberParamter:@(self.bwfloat) forKey:@"bwfloat"];
      [self.requestData setNumberParamter:@(self.bwdouble) forKey:@"bwdouble"];
      [self.requestData setParamter:self.bwstring forKey:@"bwstring"];
      [self.requestData setNumberParamter:@(self.bwbool) forKey:@"bwbool"];
      [self.requestData setNumberParamter:@(self.bwuchar) forKey:@"bwuchar"];
      [self.requestData setNumberParamter:@(self.bwinteger) forKey:@"bwinteger"];
      [self.requestData setNumberParamter:@(self.bwuinteger) forKey:@"bwuinteger"];
      [self.requestData setNumberParamter:@(self.bwinta) forKey:@"bwinta"];
      [self.requestData setNumberParamter:@(self.bwintb) forKey:@"bwintb"];
      [self.requestData setNumberParamter:@(self.bwintc) forKey:@"bwintc"];
      [self.requestData setNumberParamter:@(self.bwintd) forKey:@"bwintd"];
      [self.requestData setNumberParamter:@(self.bwushort) forKey:@"bwushort"];
      [self.requestData setNumberParamter:@(self.bwuinta) forKey:@"bwuinta"];
      [self.requestData setNumberParamter:@(self.bwuintb) forKey:@"bwuintb"];
      [self.requestData setNumberParamter:@(self.bwuintc) forKey:@"bwuintc"];
      [self.requestData setNumberParamter:@(self.bwuintd) forKey:@"bwuintd"];
      [self.requestData setNumberParamter:@(self.bwulong) forKey:@"bwulong"];
      [self.requestData setNumberParamter:@(self.bwulonglong) forKey:@"bwulonglong"];
      [self.requestData setNumberParamter:@(self.bwuint) forKey:@"bwuint"];
}
@end

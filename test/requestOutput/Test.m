//
//  Test.m
//  Test
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//

#import "Test.h"
#import "UserInfo.h"

@class UserInfo


@implementation Test

+ (NSDictionary *)modelContainerPropertyGenericClass
{
   return @ {
      @"bwobjarray":[UserInfo class],
  };
}
+ (NSDictionary *)modelCustomPropertyMapper
{
  return @{
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
      [self.requestData setNumberParamter:@(self.bwushort) forKey:@"bwushort"];
      [self.requestData setNumberParamter:@(self.bwuint) forKey:@"bwuint"];
      [self.requestData setNumberParamter:@(self.bwinteger) forKey:@"bwinteger"];
      [self.requestData setNumberParamter:@(self.bwuinteger) forKey:@"bwuinteger"];
      [self.requestData setNumberParamter:@(self.bwinta) forKey:@"bwinta"];
      [self.requestData setNumberParamter:@(self.bwintb) forKey:@"bwintb"];
      [self.requestData setNumberParamter:@(self.bwintc) forKey:@"bwintc"];
      [self.requestData setNumberParamter:@(self.bwintd) forKey:@"bwintd"];
      [self.requestData setNumberParamter:@(self.bwuinta) forKey:@"bwuinta"];
      [self.requestData setNumberParamter:@(self.bwuintb) forKey:@"bwuintb"];
      [self.requestData setNumberParamter:@(self.bwuintc) forKey:@"bwuintc"];
      [self.requestData setNumberParamter:@(self.bwuintd) forKey:@"bwuintd"];
      [self.requestData setNumberParamter:@(self.bwulong) forKey:@"bwulong"];
      [self.requestData setNumberParamter:@(self.bwulonglong) forKey:@"bwulonglong"];
}
@end

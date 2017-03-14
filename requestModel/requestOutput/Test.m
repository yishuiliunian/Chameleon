//
//  Test.m
//  Test
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//

#import "Test.h"
#import "UserInfo.h"
#import "UserInfo.h"

@class UserInfo;


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
@end

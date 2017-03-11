//
//  UserInfo.m
//  UserInfo
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//

#import "UserInfo.h"



@implementation UserInfo

+ (NSDictionary *)modelCustomPropertyMapper
{
  return @{
  };
}

- (void) buildRequest
{
    [super buildRequest];
      [self.requestData setParamter:self.name forKey:@"name"];
}
@end

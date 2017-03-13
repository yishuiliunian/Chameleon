//
//  IDCardCheck.m
//  IDCardCheck
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//

#import "IDCardCheck.h"



@implementation QCloudIDCardCheckRequest

+ (NSDictionary *)modelCustomPropertyMapper
{
  return @{
  };
}

- (void) buildRequest
{
    [super buildRequest];
    [self.requestData setParamter:self.path forKey:@"path"];
}
@end

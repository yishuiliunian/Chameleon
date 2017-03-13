//
//  IDCardCheck.m
//  IDCardCheck
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//



#import "QCloudIDCardCheckRequest.h"



@implementation QCloudIDCardCheckRequest



- (BOOL) buildRequestData:(NSError *__autoreleasing *)error
{
    if (![super buildRequestData:error]) {
        return NO;
    }
    [self.requestData setParameter:self.path withKey:@"path"];
    if (self.imagePath) {
        if(![self.requestData appendPartWithFileURL:[NSURL fileURLWithPath:self.imagePath] name:@"imagePath" fileName:[NSUUID UUID].UUIDString mimeType:@"None" headerParamters:@{} error:error])
        {
          return NO;
        }
    }
    return YES;
}
@end

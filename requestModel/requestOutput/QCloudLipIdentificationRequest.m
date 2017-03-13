//
//  LipIdentification.m
//  LipIdentification
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//



#import "QCloudLipIdentificationRequest.h"



@implementation QCloudLipIdentificationRequest



- (BOOL) buildRequestData:(NSError *__autoreleasing *)error
{
    if (![super buildRequestData:error]) {
        return NO;
    }
    [self.requestData setParameter:self.appid withKey:@"appid"];
    [self.requestData setParameter:self.bucket withKey:@"bucket"];
    self.requestData.serverURL = @"http://xxxxxx.xx.xx";
    self.requestData.URIMethod = @"five/four";
    return YES;
}
@end

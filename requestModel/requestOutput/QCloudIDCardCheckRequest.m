//
//  IDCardCheck.m
//  IDCardCheck
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//



#import "QCloudIDCardCheckRequest.h"
#import "QCloudObjectModel.h"
#import "UserInfo.h"



@implementation QCloudIDCardCheckRequest



- (BOOL) buildRequestData:(NSError *__autoreleasing *)error
{
    if (![super buildRequestData:error]) {
        return NO;
    }

          
    if (self.imagePath) {
        if(![self.requestData appendPartWithFileURL:[NSURL fileURLWithPath:self.imagePath] name:@"imagePath" fileName:[NSUUID UUID].UUIDString mimeType:@"image" headerParamters:@{} error:error])
        {
          return NO;
        }
    }
    [self.requestData setParameter:[self.userInfo qcloud_modelToJSONString] withKey:@"user_info"];
    [self.requestData setParameter:[self.imageURL isFileURL]?self.imageURL.path:self.imageURL.absoluteString withKey:@"imageURL"];
    for (int i=0; i < self.image.count ; i++) {
        NSString* path = self.image[i];
        if (![self.requestData appendPartWithFileURL:[NSURL fileURLWithPath:path] name:@"image[i]" fileName:[NSUUID UUID] mimeType:@"image" headerParamters:@{} error:error]) {
            return NO;
        }
    }
    return YES;
}
@end

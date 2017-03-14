//
//  LiveDetectFour.m
//  LiveDetectFour
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//



#import "QCloudLiveDetectFourRequest.h"
#import "QCloudObjectModel.h"
#import "xello.h"



@implementation QCloudLiveDetectFourRequest


- (NSArray*) customResponseSerializer
{
    NSMutableArray* array = [[super customResponseSerializer] mutableCopy];
    [array addObjectsFromArray:@[
                                 QCloudResponseObjectSerilizerBlock([xello class])
                                 ]];
    return array;
}

- (BOOL) buildRequestData:(NSError *__autoreleasing *)error
{
    if (![super buildRequestData:error]) {
        return NO;
    }

    [self.requestData setParameter:self.bucket withKey:@"bucket"];
    [self.requestData setParameter:self.validateData withKey:@"validate_data"];
          
    if (self.video) {
        if(![self.requestData appendPartWithFileURL:[NSURL fileURLWithPath:self.video] name:@"video" fileName:[NSUUID UUID].UUIDString mimeType:@"video" headerParamters:@{} error:error])
        {
          return NO;
        }
    }
    [self.requestData setParameter:self.compareFlag?@"true":@"false" withKey:@"compare_flag"];
          
    if (self.card) {
        if(![self.requestData appendPartWithFileURL:[NSURL fileURLWithPath:self.card] name:@"card" fileName:[NSUUID UUID].UUIDString mimeType:@"image" headerParamters:@{} error:error])
        {
          return NO;
        }
    }
    [self.requestData setParameter:self.seq withKey:@"seq"];
    self.requestData.serverURL = @"http://182.140.177.151";
    self.requestData.URIMethod = @"face/livedetectfour";
    [self.requestData setValue:@"service.image.myqcloud.com" forHTTPHeaderField:@"Host"];

    return YES;
}
@end

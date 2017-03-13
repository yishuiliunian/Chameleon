//
//  LiveDetectFour.h
//  LiveDetectFour
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "QCloudRestNet.h"
#import "xello.h"


@interface QCloudLiveDetectFourRequest : QCloudFormDataHTTPRequest
/*
* 存储的位置
*/
@property (strong, nonatomic) NSString *bucket;
@property (strong, nonatomic) NSString *validateData;
@property (strong, nonatomic) NSString *video;
@property (assign, nonatomic) BOOL compareFlag;
@property (strong, nonatomic) NSString *card;
@property (strong, nonatomic) NSString *seq;






- (void) setFinishBlock:(void (^)(xello* result, NSError * error))QCloudRequestFinishBlock;
@end

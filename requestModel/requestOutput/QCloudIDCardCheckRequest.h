//
//  IDCardCheck.h
//  IDCardCheck
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "QCloudRestNet.h"

@class UserInfo;
@class NSString;

@interface QCloudIDCardCheckRequest : QCloudHTTPRequest
@property (strong, nonatomic) NSString *imagePath;
@property (strong, nonatomic) UserInfo *userInfo;
@property (strong, nonatomic) NSURL *imageURL;
@property (strong, nonatomic) NSArray<NSString*> *image;


@end

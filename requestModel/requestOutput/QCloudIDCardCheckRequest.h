//
//  IDCardCheck.h
//  IDCardCheck
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "QCloudRestNet.h"


@interface QCloudIDCardCheckRequest : QCloudHTTPRequest
@property (strong, nonatomic) NSString *path;
@property (strong, nonatomic) NSString *imagePath;


@end

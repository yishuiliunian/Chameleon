//
//  LipIdentification.h
//  LipIdentification
//
//  Created by tencent
//  Copyright (c) 2015年 tencent. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "QCloudRestNet.h"


@interface QCloudLipIdentificationRequest : QCloudHTTPRequest
@property (strong, nonatomic) NSString *appid;
@property (strong, nonatomic) NSString *bucket;




@end

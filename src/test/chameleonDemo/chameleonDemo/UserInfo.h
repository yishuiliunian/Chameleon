//
//  UserInfo.h
//  UserInfo
//
//  Created by baidu
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BWModelProtocol.h"

@interface UserInfo : NSObject<NSCopying,BWTODictionaryProtocol>

@property (strong, nonatomic) NSString *name;

@end

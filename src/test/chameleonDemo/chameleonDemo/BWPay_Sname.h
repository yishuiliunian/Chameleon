//
//  BWPay_Sname.h
//  BWPay_Sname
//
//  Created by baidu
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UserInfo;

@interface BWPay_Sname : NSObject<NSCopying>

@property (assign, nonatomic) char bwchar;
@property (assign, nonatomic) short bwshort;
@property (assign, nonatomic) long bwlong;
@property (assign, nonatomic) long long bwlonglong;
@property (assign, nonatomic) int bwint;
@property (assign, nonatomic) float bwfloat;
@property (assign, nonatomic) double bwdouble;
@property (strong, nonatomic) NSURL *bwurl;
@property (strong, nonatomic) NSString *bwstring;
@property (strong, nonatomic) NSData *bwdata;
@property (strong, nonatomic) NSNumber *bwnumber;
@property (strong, nonatomic) NSDictionary *bwdic;
@property (strong, nonatomic) UserInfo *bwCustomObj;
@property (assign, nonatomic) BOOL bwbool;
@property (assign, nonatomic) unsigned char bwuchar;
@property (assign, nonatomic) NSInteger bwinteger;
@property (assign, nonatomic) NSUInteger bwuinteger;
@property (assign, nonatomic) int8_t bwinta;
@property (assign, nonatomic) int16_t bwintb;
@property (assign, nonatomic) int32_t bwintc;
@property (assign, nonatomic) int64_t bwintd;
@property (assign, nonatomic) unsigned short bwushort;
@property (assign, nonatomic) uint8_t bwuinta;
@property (assign, nonatomic) uint16_t bwuintb;
@property (assign, nonatomic) uint32_t bwuintc;
@property (assign, nonatomic) uint64_t bwuintd;
@property (assign, nonatomic) unsigned long bwulong;
@property (assign, nonatomic) unsigned long long bwulonglong;
@property (assign, nonatomic) unsigned int bwuint;
@property (strong, nonatomic) NSArray *bwstringarray;
@property (strong, nonatomic) NSArray *bwnumberarray;
@property (strong, nonatomic) NSArray *bwobjarray;

@end

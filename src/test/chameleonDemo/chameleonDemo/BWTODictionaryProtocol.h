//
//  BWTODictionaryProtocol.h
//  chameleonDemo
//
//  Created by baidu
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BWTODictionaryProtocol <NSObject>
@property (nonatomic, strong, readonly) id toDictionaryValue;
@property (nonatomic, strong, readonly) id toServerDictionaryValue;
@end

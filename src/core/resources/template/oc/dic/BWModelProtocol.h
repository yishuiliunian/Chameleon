# coding: UTF-8
//
//  BWModelProtocol.h
//  chameleonDemo
//
//  Created by baidu on 15/9/1.
//  Copyright © 2015年 Baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BWTODictionaryProtocol <NSObject>
@property (nonatomic, strong, readonly) id toDictionaryValue;
@property (nonatomic, strong, readonly) id toServerDictionaryValue;
@end

@protocol BWDeepCopyProtocol <NSObject>
@property (nonatomic, strong, readonly) id deepCopy;
@end
//
//  BWDeepCopy.h
//  chameleonDemo
//
//  Created by baidu on 15/9/1.
//  Copyright © 2015年 Baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BWModelProtocol.h"

@interface NSObject (DeepCopy) <BWDeepCopyProtocol>
@end

@interface NSDictionary (DeepCopy) <BWDeepCopyProtocol>
@end

@interface NSArray (DeepCopy) <BWDeepCopyProtocol>
@end
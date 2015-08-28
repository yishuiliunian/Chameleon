//
//  NSURL+TODictionary.m
//  chameleonDemo
//
//  Created by liujin on 15/8/28.
//  Copyright © 2015年 LiuJin. All rights reserved.
//

#import "NSURL+TODictionary.h"

@implementation NSURL (TODictionary)
- (id)toDictionaryValue
{
    return [self absoluteString];
}

- (id)toServerDictionaryValue
{
    return [self absoluteString];
}
@end

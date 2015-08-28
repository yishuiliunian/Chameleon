//
//  NSData+TODictionary.m
//  chameleonDemo
//
//  Created by liujin on 15/8/28.
//  Copyright © 2015年 LiuJin. All rights reserved.
//

#import "NSData+TODictionary.h"

@implementation NSData (TODictionary)
- (id)toDictionaryValue
{
    return  [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}

- (id)toServerDictionaryValue
{
    return  [[NSString alloc] initWithData:self encoding:NSUTF8StringEncoding];
}
@end

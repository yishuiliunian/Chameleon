# coding: UTF-8
//
//  NSDictionary+TODictionary.m
//  chameleonDemo
//
//  Created by baidu
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "NSDictionary+TODictionary.h"

@implementation NSDictionary (TODictionary)
- (id)toDictionaryValue
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSArray *allKeys = self.allKeys;
    for (NSString *key in allKeys) {
        id value = [self valueForKey:key];
        if (value) {
            [dic setObject:[value toDictionaryValue] forKey:key];
        }
    }
    return dic;
}

- (id)toServerDictionaryValue
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    NSArray *allKeys = self.allKeys;
    for (NSString *key in allKeys) {
        id value = [self valueForKey:key];
        if (value) {
            [dic setObject:[value toServerDictionaryValue] forKey:key];
        }
    }
    return dic;
}
@end

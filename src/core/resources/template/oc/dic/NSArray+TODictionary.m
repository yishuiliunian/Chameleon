# coding: UTF-8
//
//  NSArray+TODictionary.m
//  chameleonDemo
//
//  Created by baidu
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "NSArray+TODictionary.h"

@implementation NSArray (TODictionary)
- (id)toDictionaryValue
{
    NSMutableArray *array = [NSMutableArray array];
    for (id value in array) {
        if (value) {
            [array addObject:[value toDictionaryValue]];
        }
    }
    return array;
}

- (id)toServerDictionaryValue
{
    NSMutableArray *array = [NSMutableArray array];
    for (id value in array) {
        if (value) {
            [array addObject:[value toServerDictionaryValue]];
        }
    }
    return array;
}
@end

//
//  UserInfo.m
//  UserInfo
//
//  Created by baidu
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "UserInfo.h"
#import "NSObject+TODictionary.h"
#import "EnsureType.h"

@implementation UserInfo

- (id)toDictionaryValue
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setObject:self.name forKey:@"name"];
    return dic;
}

- (id)toServerDictionaryValue
{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    return dic;
}

- (id)copyWithZone:(NSZone *)zone
{
    UserInfo *copyedModel = [[self.class allocWithZone:zone] init];
    copyedModel.name = self.name.copy;
    return copyedModel;
}

- (void)setValue:(id)value forKey:(NSString *)key
{
    if (NO){}
    // NSString
    else if ([key isEqualToString:@"name"])
    {
        _name = ensureStringType(value);
     }
}

@end

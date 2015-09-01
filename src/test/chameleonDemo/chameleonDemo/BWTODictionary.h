//
//  BWTODictionary.h
//  chameleonDemo
//
//  Created by baidu on 15/9/1.
//  Copyright © 2015年 Baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BWModelProtocol.h"

@interface NSObject (TODictionary) <BWTODictionaryProtocol>
@end

@interface NSDictionary (TODictionary) <BWTODictionaryProtocol>
@end

@interface NSArray (TODictionary) <BWTODictionaryProtocol>
@end

@interface NSURL (TODictionary) <BWTODictionaryProtocol>
@end

@interface NSData (TODictionary) <BWTODictionaryProtocol>

@end

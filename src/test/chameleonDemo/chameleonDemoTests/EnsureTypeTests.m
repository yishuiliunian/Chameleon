//
//  chameleonDemoTests.m
//  chameleonDemoTests
//
//  Created by liujin on 15/8/13.
//  Copyright (c) 2015年 LiuJin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "EnsureType.h"
#import "BWPay.h"

@interface EnsureTypeTests : XCTestCase

@property (nonatomic, strong) NSArray *foundationUnsupportArr;
@property (nonatomic, strong) NSArray *foundationInputArr;
@property (nonatomic, strong) NSArray *integerOutputArr;
@property (nonatomic, strong) NSArray *decimalOutputArr;
@end

@implementation EnsureTypeTests

- (void)setUp {
    [super setUp];
    _foundationUnsupportArr = @[@"",@" ",@"1a",@"hello world",[NSNull null]];
    _foundationInputArr = @[@1,@"1",@"1.2",@"1.2a",@"123"];
    _integerOutputArr = @[@1,@1,@0,@0,@123];
    _decimalOutputArr = @[@1,@1,@1.2,@0,@123];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

// 判断两个数是否想等，若不想等，输出

// char
- (void)testEnsureCharType
{
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureCharType(_foundationUnsupportArr[i]), @"char类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_integerOutputArr[i] charValue], ensureCharType(_foundationInputArr[i]));
    }
}
// unsigned char
- (void)testEnsureUnsignedCharType
{
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureUnsignedCharType(_foundationUnsupportArr[i]), @"unsigned char类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_integerOutputArr[i] unsignedCharValue], ensureUnsignedCharType(_foundationInputArr[i]));
    }
}
// int
- (void)testEnsureIntType {
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureIntType(_foundationUnsupportArr[i]), @"int类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        if ([_integerOutputArr[i] intValue] != ensureIntType(_foundationInputArr[i])) {
            NSLog(@"input=%@--want=%d--output=%d",_foundationInputArr[i],[_integerOutputArr[i] charValue],ensureIntType(_foundationInputArr[i]));
        }
        XCTAssertEqual([_integerOutputArr[i] intValue], ensureIntType(_foundationInputArr[i]));
    }
}
// unsigned int
- (void)testEnsureUnsignedIntType {
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureUnsignedIntType(_foundationUnsupportArr[i]), @"unsigned int类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_integerOutputArr[i] unsignedIntValue], ensureUnsignedIntType(_foundationInputArr[i]));
    }
}
// short
- (void)testEnsureShortType {
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureShortType(_foundationUnsupportArr[i]), @"unsigned short类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_integerOutputArr[i] shortValue], ensureShortType(_foundationInputArr[i]));
    }
}
// unsigned short
- (void)testEnsureUnsignedShortType {
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureUnsignedShortType(_foundationUnsupportArr[i]), @"short类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_integerOutputArr[i] unsignedShortValue], ensureUnsignedShortType(_foundationInputArr[i]));
    }
}
// long
- (void)testEnsureLongType {
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureLongType(_foundationUnsupportArr[i]), @"long类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_integerOutputArr[i] longValue], ensureLongLongType(_foundationInputArr[i]));
    }
}
// unsigned long
- (void)testEnsureUnsignedLongType {
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureUnsignedLongType(_foundationUnsupportArr[i]), @"unsigned long类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_integerOutputArr[i] unsignedLongValue], ensureUnsignedLongType(_foundationInputArr[i]));
    }
}
// long long
- (void)testEnsureLongLongType {
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureUnsignedLongType(_foundationUnsupportArr[i]), @"long long类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_integerOutputArr[i] longLongValue], ensureLongLongType(_foundationInputArr[i]));
    }
}
// unsigned long long
- (void)testEnsureUnsignedLongLongType {
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureUnsignedLongLongType(_foundationUnsupportArr[i]), @"unsigned long long类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_integerOutputArr[i] unsignedLongLongValue], ensureUnsignedLongLongType(_foundationInputArr[i]));
    }
}
// Integer
- (void)testEnsureIntegerType {
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureIntegerType(_foundationUnsupportArr[i]), @"integer类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_integerOutputArr[i] integerValue], ensureIntegerType(_foundationInputArr[i]));
    }
}
// UInteger
- (void)testEnsureUIntegerType {
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureUIntegerType(_foundationUnsupportArr[i]), @"uinteger类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_integerOutputArr[i] unsignedIntegerValue], ensureUIntegerType(_foundationInputArr[i]));
    }
}
// float
- (void)testEnsureFloatType {
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureFloatType(_foundationUnsupportArr[i]), @"float类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_decimalOutputArr[i] floatValue], ensureFloatType(_foundationInputArr[i]));
    }
}
// double
- (void)testEnsureDoubleType {
    for (int i = 0; i<_foundationUnsupportArr.count; i++) {
        XCTAssertEqual(0, ensureDoubleType(_foundationUnsupportArr[i]), @"double类型赋值不正确");
    }
    for (int i = 0; i<_foundationInputArr.count; i++) {
        XCTAssertEqual([_decimalOutputArr[i] doubleValue], ensureDoubleType(_foundationInputArr[i]));
    }
}
// BOOL
- (void)testEnsureBoolType {
    NSArray *returnNoArr = @[@0,@"ha",@"0",@"",@" ",@"false",[NSNull null]];
    NSArray *returnYesArr = @[@1,@12,@"true"];
    for (int i = 0; i<returnNoArr.count; i++) {
        XCTAssertEqual(NO, ensureBoolType(returnNoArr[i]), @"BOOL类型赋值不正确");
    }
    for (int i = 0; i<returnYesArr.count; i++) {
        XCTAssertEqual(YES, ensureBoolType(returnYesArr[i]), @"BOOL类型赋值不正确");
    }
}
// NSString
- (void)testEnsureStringType {
    NSArray *stringInputArr = @[@1234,@"",@" ",@"1234"];
    NSArray *stringOutputArr = @[@"1234",@"",@" ",@"1234"];
    XCTAssertNil(ensureStringType(nil),@"NSString类型赋值不正确");
    XCTAssertNil(ensureStringType([NSNull null]),@"NSString类型赋值不正确");
    for (int i = 0; i<stringInputArr.count; i++) {
        XCTAssertEqualObjects(stringOutputArr[i], ensureStringType(stringInputArr[i]), @"NSString类型赋值不正确");
    }
}
// Number
- (void)testEnsureNumberType {
    NSArray *numnerNilArr = @[@"",@" ",@"12d",[NSNull null]];
    NSArray *numberInputArr = @[@123,@"1234"];
    NSArray *numberOutputArr = @[@123,@1234];
    XCTAssertNil(ensureNumberType(nil),@"NSNumber类型赋值不正确");
    for (int i = 0; i<numnerNilArr.count; i++) {
        XCTAssertNil(ensureNumberType(nil),@"NSNumber类型赋值不正确");
    }
    for (int i = 0; i<numberInputArr.count; i++) {
        NSLog(@"output--%@",ensureNumberType(numberInputArr[i]));
        XCTAssertEqualObjects(numberOutputArr[i], ensureNumberType(numberInputArr[i]), @"NSNumber类型赋值不正确");
    }
}
// URL
- (void)testEnsureURLType {
    NSString *urlString = @" ";
    NSURL *url = [NSURL URLWithString:urlString];
    XCTAssertNil(ensureURLType(nil),@"NSURL类型赋值不正确");
    XCTAssertNil(ensureURLType([NSNull null]),@"NSURL类型赋值不正确");
    XCTAssertEqualObjects(url, ensureURLType(urlString), @"NSURL类型赋值不正确");
}
// NSData
- (void)testEnsureDataType {
    NSData *strData = ensureDataType(@"hello world");
    NSData *kongData = ensureDataType(@" ");
    NSLog(@"kongData--%@",kongData);
    NSLog(@"strData--%@",strData);
    XCTAssertNil(ensureDataType(nil),@"NSData类型赋值不正确");
    XCTAssertNil(ensureDataType([NSNull null]),@"NSData类型赋值不正确");
}
// Dictionary
- (void)testEnsureDictionaryType {
    NSDictionary *dic = @{
                          @"name":@"lj",
                          @"hello":@"hi",
                          };
    XCTAssertNil(ensureDictionaryType(nil),@"NSDictionary类型赋值不正确");
    XCTAssertNil(ensureDictionaryType([NSNull null]),@"NSDictionary类型赋值不正确");
    XCTAssertEqualObjects(dic, ensureDictionaryType(dic),@"NSDictionary类型赋值不正确");
}

// NSArray
- (void)testEnsureArrayType
{
    NSArray *inputArr = @[@123,@"123",@"",[NSNull null]];
    XCTAssertNil(ensureArrayType(nil),@"NSArray类型赋值不正确");
    XCTAssertNil(ensureArrayType([NSNull null]),@"NSArray类型赋值不正确");
    XCTAssertEqual(inputArr, ensureArrayType(inputArr),@"NSArray类型赋值不正确");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

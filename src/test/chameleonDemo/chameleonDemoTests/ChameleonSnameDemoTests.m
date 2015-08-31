//
//  ChameleonSnameDemoTests.m
//  chameleonDemo
//
//  Created by liujin on 15/8/20.
//  Copyright (c) 2015年 LiuJin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BWPay_Sname.h"
#import "UserInfo.h"

@interface ChameleonSnameDemoTests : XCTestCase
{
    NSArray *foundationInputArr;
    NSArray *charinputArr;
}
@property (nonatomic, strong) NSMutableDictionary *jsonDic;
@property (nonatomic, strong) BWPay_Sname *chameleonObj;
@property (nonatomic, strong) NSArray *integerTypeArr;
@property (nonatomic, strong) NSArray *integerSnameTypeArr;

@end

@implementation ChameleonSnameDemoTests
- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    [super setUp];
    _jsonDic = [NSMutableDictionary dictionaryWithCapacity:50];
    _integerTypeArr = @[@"bwinteger",@"bwuinteger",@"bwlong",@"bwulong",@"bwlonglong",@"bwulonglong",@"bwint",@"bwuint",@"bwintc",@"bwintd",@"bwuintc",@"bwuintd",@"bwshort",@"bwushort",@"bwintb",@"bwuintb"];
    _integerSnameTypeArr = @[@"bw_integer_sname",@"bw_uinteger_sname",@"bw_long_sname",@"bw_ulong_sname",@"bw_longlong_sname",@"bw_ulonglong_sname",@"bw_int_sname",@"bw_uint_sname",@"bw_int32_sname",@"bw_int64_sname",@"bw_uint32_sname",@"bw_uint64_sname",@"bw_short_sname",@"bw_ushort_sname",@"bw_int16_sname",@"bw_uint16_sname"];
    foundationInputArr = @[@1234,@123456,@"",@" ",@"1234",@"123.0"];
    charinputArr = @[@97,@"98",@"",@" "];
}

- (void)testSetValuesForKeys
{
    //----------------基本数据类型----------------
    // input
    // foundationInputArr = @[@1234,@123456,@"",@" ",@"1234",@"123.0"];
    // output
    short shortArr[] = {1234,-7616,0,0,1234,0};
    unsigned short ushortArr[] = {1234,57920,0,0,1234,0};
    int intArr[] = {1234,123456,0,0,1234,0};
    unsigned uintArr[] = {1234,123456,0,0,1234,0};
    NSInteger integerArr[] = {1234,123456,0,0,1234,0};
    NSUInteger uintegerArr[] = {1234,123456,0,0,1234,0};
    long longArr[] = {1234,123456,0,0,1234,0};
    unsigned long ulongArr[] = {1234,123456,0,0,1234,0};
    long long longlongArr[] = {1234,123456,0,0,1234,0};
    unsigned long long ulonglongArr[] = {1234,123456,0,0,1234,0};
    int16_t int16Arr[] = {1234,-7616,0,0,1234,0};
    uint16_t uint16Arr[] = {1234,57920,0,0,1234,0};
    int32_t int32Arr[] = {1234,123456,0,0,1234,0};
    int64_t int64Arr[] = {1234,123456,0,0,1234,0};
    uint32_t uint32Arr[] = {1234,123456,0,0,1234,0};
    uint64_t uint64Arr[] = {1234,123456,0,0,1234,0};
    
    BWPay_Sname* pay = [BWPay_Sname new];
    for (int i = 0; i < foundationInputArr.count; i++) {
        for (int j = 0; j < _integerSnameTypeArr.count; j++) {
            [_jsonDic setValue:foundationInputArr[i] forKey:_integerTypeArr[j]];
        }
        [pay setValuesForKeysWithDictionary:_jsonDic];
        // 比较大小
        XCTAssert((pay.bwint ==  intArr[i]));
        XCTAssert((pay.bwuint ==  uintArr[i]));
        XCTAssert((pay.bwlong ==  longArr[i]));
        XCTAssert((pay.bwulong ==  ulongArr[i]));
        XCTAssert((pay.bwlonglong ==  longlongArr[i]));
        XCTAssert((pay.bwulonglong ==  ulonglongArr[i]));
        XCTAssert((pay.bwintc ==  int32Arr[i]));
        XCTAssert((pay.bwintd ==  int64Arr[i]));
        XCTAssert((pay.bwuintc ==  uint32Arr[i]));
        XCTAssert((pay.bwuintd ==  uint64Arr[i]));
        XCTAssert((pay.bwinteger ==  integerArr[i]));
        XCTAssert((pay.bwuinteger ==  uintegerArr[i]));
        XCTAssert((pay.bwshort ==  shortArr[i]));
        XCTAssert((pay.bwushort ==  ushortArr[i]));
        XCTAssert((pay.bwintb ==  int16Arr[i]));
        XCTAssert((pay.bwuintb ==  uint16Arr[i]));
    }
    
    // input NSArray、NSDictionary、NSURL、NSData...
    // output 0
    
    NSDictionary *testDic = @{@"name":@"lj"};
    NSURL *testUrl = [NSURL URLWithString:@"www.baidu.com"];
    NSData *testData = [@"hello" dataUsingEncoding:NSUTF8StringEncoding];
    NSArray *testArray = @[testDic,testUrl,testData,foundationInputArr];
    for (int i = 0; i < testArray.count; i++) {
        for (int j = 0; j < _integerSnameTypeArr.count; j++) {
            [_jsonDic setValue:testArray[i] forKey:_integerTypeArr[j]];
        }
    }
    [pay setValuesForKeysWithDictionary:_jsonDic];
    // 比较大小
    XCTAssert(pay.bwint ==  0);
    XCTAssert(pay.bwuint ==  0);
    XCTAssert(pay.bwlong ==  0);
    XCTAssert(pay.bwulong ==  0);
    XCTAssert(pay.bwlonglong ==  0);
    XCTAssert(pay.bwulonglong ==  0);
    XCTAssert(pay.bwintc ==  0);
    XCTAssert(pay.bwintd ==  0);
    XCTAssert(pay.bwuintc ==  0);
    XCTAssert(pay.bwuintd ==  0);
    XCTAssert(pay.bwinteger ==  0);
    XCTAssert(pay.bwuinteger ==  0);
    XCTAssert(pay.bwshort ==  0);
    XCTAssert(pay.bwushort ==  0);
    XCTAssert(pay.bwintb ==  0);
    XCTAssert(pay.bwuintb ==  0);
    
    //----------------基本对象类型----------------
    // NSNumber NSString
    NSArray *numberInputArr = @[@1234,@"1234",];
    for (int i = 0; i < foundationInputArr.count; i++) {
        [_jsonDic setValue:numberInputArr[i] forKey:@"bwnumber"];
        [_jsonDic setValue:numberInputArr[i] forKey:@"bwnumber"];
    }
}
// char
- (void)testCharOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    char charArr[] = {97,98,0,0};
    for (int i = 0; i < charinputArr.count; i++) {
        [pay setValue:charinputArr[i] forKey:@"bwchar"];
        NSLog(@"char=%c",pay.bwchar);
        XCTAssert((pay.bwchar ==  charArr[i]));
    }
    // test others
    NSArray *testArr;
    [pay setValue:testArr forKey:@"bwchar"];
    XCTAssert(pay.bwchar == 0);
    NSURL *testUrl = [NSURL URLWithString:@"www.baidu.com"];
    [pay setValue:testUrl forKey:@"bwchar"];
    XCTAssert(pay.bwchar == 0);
}

// unsigned char
- (void)testUCharOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    unsigned char ucharArr[] = {97,98,0,0};
    for (int i = 0; i < charinputArr.count; i++) {
        [pay setValue:charinputArr[i] forKey:@"bwuchar"];
        XCTAssert((pay.bwuchar ==  ucharArr[i]));
    }
    NSDictionary *testDic = @{@"name":@"liujin"};
    [pay setValue:testDic forKey:@"bwuchar"];
    XCTAssert(pay.bwuchar == 0);
}

// int
- (void)testIntOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    int intArr[] = {1234,123456,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwint"];
        XCTAssert((pay.bwint ==  intArr[i]));
    }
    NSData *testData = [@"hello" dataUsingEncoding:NSUTF8StringEncoding];
    [pay setValue:testData forKey:@"bwint"];
    XCTAssert(pay.bwint == 0);
}

// unsigned int
- (void)testUIntOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    unsigned uintArr[] = {1234,123456,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwuint"];
        XCTAssert((pay.bwuint ==  uintArr[i]));
    }
    NSArray *testArr = @[@1,@2];
    [pay setValue:testArr forKey:@"bwuint"];
    XCTAssert(pay.bwuint == 0);
}

// short
- (void)testShortOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    short shortArr[] = {1234,-7616,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwshort"];
        XCTAssert((pay.bwshort ==  shortArr[i]));
    }
    NSArray *testArr = @[@1,@2];
    [pay setValue:testArr forKey:@"bwshort"];
    XCTAssert(pay.bwshort == 0);
}

// unsigned short
- (void)testUsignedShortOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    unsigned short ushortArr[] = {1234,57920,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwushort"];
        NSLog(@"unsigned short=%u",pay.bwushort);
        XCTAssert((pay.bwushort ==  ushortArr[i]));
    }
    NSData *testData = [@"hello" dataUsingEncoding:NSUTF8StringEncoding];
    [pay setValue:testData forKey:@"bwushort"];
    XCTAssert(pay.bwushort == 0);
}

// long
- (void)testLongOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    long longArr[] = {1234,123456,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwlong"];
        XCTAssert((pay.bwlong ==  longArr[i]));
    }
    NSDictionary *testDic = @{@"name":@"liujin"};
    [pay setValue:testDic forKey:@"bwlong"];
    XCTAssert(pay.bwlong == 0);
}

// unsigned long
- (void)testUlongOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    unsigned long ulongArr[] = {1234,123456,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwulong"];
        XCTAssert((pay.bwulong ==  ulongArr[i]));
    }
    NSData *testData = [@"RRRRR" dataUsingEncoding:NSUTF8StringEncoding];
    [pay setValue:testData forKey:@"bwulong"];
    XCTAssert(pay.bwulong == 0);
}

// long long
- (void)testLonglongOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    long long longlongArr[] = {1234,123456,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwlonglong"];
        XCTAssert((pay.bwlonglong ==  longlongArr[i]));
    }
    NSURL *testUrl = [NSURL URLWithString:@"www.baidu.com"];
    [pay setValue:testUrl forKey:@"bwlonglong"];
    XCTAssert(pay.bwlonglong == 0);
}

// unsigned long long
- (void)testUlonglongOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    unsigned long long ulonglongArr[] = {1234,123456,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwulonglong"];
        XCTAssert((pay.bwulonglong ==  ulonglongArr[i]));
    }
    NSDictionary *testDic = @{@"name":@"liujin"};
    [pay setValue:testDic forKey:@"bwulonglong"];
    XCTAssert(pay.bwulonglong == 0);
}

// integer
- (void)testIntegerOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    NSInteger integerArr[] = {1234,123456,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwinteger"];
        XCTAssert((pay.bwinteger ==  integerArr[i]));
    }
    NSData *testData = [@"RRRRR" dataUsingEncoding:NSUTF8StringEncoding];
    [pay setValue:testData forKey:@"bwinteger"];
    XCTAssert(pay.bwinteger == 0);
}
// unsigned integer
- (void)testUIntegerOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    NSUInteger uintegerArr[] = {1234,123456,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwuinteger"];
        XCTAssert((pay.bwuinteger ==  uintegerArr[i]));
    }
    NSDictionary *testDic = @{@"name":@"liujin"};
    [pay setValue:testDic forKey:@"bwuinteger"];
    XCTAssert(pay.bwuinteger == 0);
}

// int8
- (void)testInt8Output
{
    BWPay_Sname* pay = [BWPay_Sname new];
    int8_t int8Arr[] = {97,98,0,0};
    for (int i = 0; i < charinputArr.count; i++) {
        [pay setValue:charinputArr[i] forKey:@"bwinta"];
        XCTAssert((pay.bwinta ==  int8Arr[i]));
    }
}
// uint8
- (void)testUInt8Output
{
    BWPay_Sname* pay = [BWPay_Sname new];
    uint8_t uint8Arr[] = {97,98,0,0};
    for (int i = 0; i < charinputArr.count; i++) {
        [pay setValue:charinputArr[i] forKey:@"bwuinta"];
        XCTAssert((pay.bwuinta ==  uint8Arr[i]));
    }
}
// int16
- (void)testInt16Output
{
    BWPay_Sname* pay = [BWPay_Sname new];
    int16_t int16Arr[] = {1234,-7616,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwintb"];
        XCTAssert((pay.bwintb ==  int16Arr[i]));
    }
}
// uint16
- (void)testUInt16Output
{
    BWPay_Sname* pay = [BWPay_Sname new];
    uint16_t uint16Arr[] = {1234,57920,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwuintb"];
        XCTAssert((pay.bwuintb ==  uint16Arr[i]));
    }
}
// int32
- (void)testInt32Output
{
    BWPay_Sname* pay = [BWPay_Sname new];
    int32_t int32Arr[] = {1234,123456,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwintc"];
        XCTAssert((pay.bwintc ==  int32Arr[i]));
    }
}
// uint32
- (void)testUInt32Output
{
    BWPay_Sname* pay = [BWPay_Sname new];
    uint32_t uint32Arr[] = {1234,123456,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwuintc"];
        XCTAssert((pay.bwuintc ==  uint32Arr[i]));
    }
}
// int64
- (void)testInt64Output
{
    BWPay_Sname* pay = [BWPay_Sname new];
    int64_t int64Arr[] = {1234,123456,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwintd"];
        XCTAssert((pay.bwintd ==  int64Arr[i]));
    }
}
// uint64
- (void)testUInt64Output
{
    BWPay_Sname* pay = [BWPay_Sname new];
    uint64_t uint64Arr[] = {1234,123456,0,0,1234,0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwuintd"];
        XCTAssert((pay.bwuintd ==  uint64Arr[i]));
    }
}

// float
- (void)testFloatOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    float floatArr[] = {1234,123456,0,0,1234,123.0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwfloat"];
        XCTAssert(fabsf(floatArr[i] - pay.bwfloat) < (1e-9));
    }
    NSArray *testArr = @[@123,@"ss"];
    [pay setValue:testArr forKey:@"bwfloat"];
    XCTAssert(pay.bwfloat == 0);
}
// double
- (void)testDoubleOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    double doubleArr[] = {1234,123456,0,0,1234,123.0};
    for (int i = 0; i < foundationInputArr.count; i++) {
        [pay setValue:foundationInputArr[i] forKey:@"bwdouble"];
        XCTAssert(fabs(doubleArr[i] - pay.bwdouble) < (1e-9));
    }
    NSArray *testArr = @[@123,@"ss"];
    [pay setValue:testArr forKey:@"bwdouble"];
    XCTAssert(pay.bwdouble == 0);
}

// BOOL
-(void)testBOOLOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    NSArray *returnNoArr = @[@0,@"ha",@"0",@"",@" ",@"false",[NSNull null]];
    NSArray *returnYesArr = @[@1,@12,@"true"];
    for (int i = 0; i<returnNoArr.count; i++) {
        [pay setValue:returnNoArr[i] forKey:@"bwbool"];
        XCTAssertEqual(NO, pay.bwbool, @"BOOL类型赋值不正确");
    }
    for (int i = 0; i<returnYesArr.count; i++) {
        [pay setValue:returnYesArr[i] forKey:@"bwbool"];
        XCTAssertEqual(YES, pay.bwbool, @"BOOL类型赋值不正确");
    }
}

- (void)testStringOutput
{
    BWPay_Sname* pay = [BWPay_Sname new];
    NSArray *stringInputArr = @[@1234,@"",@" ",@"1234"];
    NSArray *stringOutputArr = @[@"1234",@"",@" ",@"1234"];
    // test input NSString and NSNumber
    for (int i = 0; i<stringInputArr.count; i++) {
        [pay setValue:stringInputArr[i] forKey:@"bwstring"];
        XCTAssert([pay.bwstring isKindOfClass:[NSString class]]);
        XCTAssert([pay.bwstring isEqualToString:stringOutputArr[i]]);
    }
    // test others
    // NSData
    NSData* data = [@"xxx" dataUsingEncoding:NSUTF8StringEncoding];
    [pay setValue:data forKey:@"bwstring"];
    XCTAssertNil(pay.bwstring);
}

- (void)testNumberOutput
{
    BWPay_Sname *pay = [BWPay_Sname new];
    NSArray *numberInputArr = @[@123,@"123"];
    NSArray *numberOutputArr = @[@123,@123];
    NSArray *numberNilArr = @[@"12q",@"",@" ",[NSNull null]];
    for (int i = 0; i<numberInputArr.count; i++) {
        [pay setValue:numberInputArr[i] forKey:@"bwnumber"];
        XCTAssert([pay.bwnumber isKindOfClass:[NSNumber class]]);
        XCTAssert([pay.bwnumber isEqualToNumber:numberOutputArr[i]]);
    }
    for (int i = 0; i<numberNilArr.count; i++) {
        [pay setValue:numberNilArr[i] forKey:@"bwnumber"];
        XCTAssertNil(pay.bwnumber);
    }
}
- (void)testUrlOutput
{
    BWPay_Sname *pay = [BWPay_Sname new];
    NSString *nilStr;
    [pay setValue:nilStr forKey:@"bwurl"];
    XCTAssertNil(pay.bwurl,@"NSURL赋值不正确");
    NSString *urlStr = @"baidu";
    [pay setValue:urlStr forKey:@"bwurl"];
    XCTAssert([pay.bwurl isKindOfClass:[NSURL class]]);
    XCTAssert([pay.bwurl isEqualTo:[NSURL URLWithString:urlStr]]);
}

// NSData
- (void)testDataOutput
{
    BWPay_Sname *pay = [BWPay_Sname new];
    NSString *string = @"hello,world";
    NSData* data = [@"hello,world" dataUsingEncoding:NSUTF8StringEncoding];
    [pay setValue:string forKey:@"bwdata"];
    XCTAssert([pay.bwdata isKindOfClass:[NSData class]]);
    XCTAssert([pay.bwdata isEqualTo:data]);
}

// NSDictionary
- (void)testDictionaryOutput
{
    BWPay_Sname *pay = [BWPay_Sname new];
    [pay setValue:nil forKey:@"bwdic"];
    XCTAssertNil(pay.bwstringarray,@"NSDictionary类型赋值不正确");
    [pay setValue:[NSNull null] forKey:@"bwdic"];
    XCTAssertNil(pay.bwstringarray,@"NSDictionary类型赋值不正确");
    NSDictionary *dic = @{
                          @"name":@"lj",
                          @"age":@22
                          };
    [pay setValue:dic forKey:@"bwdic"];
    XCTAssert([pay.bwdic isEqualToDictionary:dic],@"NSDictionary类型赋值不正确");
}
// 自定义
- (void)testCustomobjOutput
{
    BWPay_Sname *pay = [BWPay_Sname new];
    [pay setValue:nil forKey:@"bwCustomObj"];
    XCTAssertNil(pay.bwCustomObj,@"自定义类型赋值不正确");
    NSDictionary *dic = @{
                          @"name":@"lj"
                          };
    [pay setValue:dic forKey:@"bwCustomObj"];
    XCTAssert([[dic objectForKey:@"name"] isEqualToString:pay.bwCustomObj.name],@"自定义类型赋值不正确");
}
// NSArray
- (void)testEnsureArrayOutput
{
    BWPay_Sname *pay = [BWPay_Sname new];
    NSArray *inputArr = @[@123,@"123",@"",[NSNull null]];
    [pay setValue:nil forKey:@"bwarray"];
    XCTAssertNil(pay.bwstringarray,@"NSArray类型赋值不正确");
    // string array
    NSArray *outputsArr = @[@"123",@"123",@""];
    [pay setValue:inputArr forKey:@"bwstringarray"];
    XCTAssert([outputsArr isEqualToArray:pay.bwstringarray],@"NSSArray NSString类型赋值不正确");
    
    // number array
    NSArray *outputnArr = @[@123,@123];
    [pay setValue:inputArr forKey:@"bwnumberarray"];
    XCTAssert([outputnArr isEqualToArray:pay.bwnumberarray],@"NSSArray NSNumber类型赋值不正确");
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

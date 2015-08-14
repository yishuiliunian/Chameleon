//
//  ChameleonDemoTests.m
//  chameleonDemo
//
//  Created by liujin on 15/8/13.
//  Copyright (c) 2015年 LiuJin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BWPay.h"

@interface ChameleonDemoTests : XCTestCase
@property (nonatomic, strong) NSDictionary *jsonDic;
@property (nonatomic, strong) BWPay *manualObj;
@property (nonatomic, strong) BWPay *chameleonObj;

@end

@implementation ChameleonDemoTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    [super setUp];
    _manualObj = [[BWPay alloc]init];
    _chameleonObj = [[BWPay alloc]init];
    
    NSDictionary *customDic = @{
                                @"name":@"lj"
                                };
    NSDictionary *testDic = @{
                              @"sex":@"f"
                              };
    NSArray *nameArr = @[@"lj",@"xx"];
    _jsonDic = @{
                 @"bwchar":@"0",
                 @"bwuchar":@0,
                 @"bwint":@"1",
                 @"bwuint":@"dd",
                 @"bwshort":@1,
                 @"bwushort":@1,
                 @"bwlong":@1,
                 @"bwulong":@1,
                 @"bwlonglong":@1,
                 @"bwulonglong":@1,
                 @"bwinteger":@1,
                 @"bwuinteger":@1,
                 @"bwinta":@1,
                 @"bwintb":@1,
                 @"bwintc":@1,
                 @"bwintd":@1,
                 @"bwuinta":@1,
                 @"bwuintb":@1,
                 @"bwuintc":@1,
                 @"bwuintd":@1,
                 @"bwfloat":@1,
                 @"bwdouble":@1,
                 @"bwbool":@1,
                 @"bwstring":@1,
                 @"bwurl":@"baidu",
                 @"bwnumber":@1,
                 @"bwarray":nameArr,
                 @"bwdic":testDic,
                 @"bwdata":@1,
                 @"bwCustomObj":customDic,
                 };
}
- (void)printBWPay:(BWPay *)payObj
{
    NSLog(@"bwchar=%c",payObj.bwuchar);
    NSLog(@"bwuchar=%c",payObj.bwuchar);
    NSLog(@"bwuchar=%d",payObj.bwint);
    NSLog(@"bwuint=%d",payObj.bwuint);
    NSLog(@"bwshort=%d",payObj.bwshort);
    NSLog(@"bwushort=%d",payObj.bwushort);
    NSLog(@"bwlong=%ld",payObj.bwlong);
    NSLog(@"bwulong=%lu",payObj.bwulong);
    NSLog(@"bwlonglong=%lld",payObj.bwlonglong);
    NSLog(@"bwulonglong=%llu",payObj.bwulonglong);
    NSLog(@"bwuinteger=%lu",payObj.bwuinteger);
    NSLog(@"bwinta=%d",payObj.bwinta);
    NSLog(@"bwintb=%d",payObj.bwintb);
    NSLog(@"bwintc=%d",payObj.bwintc);
    NSLog(@"bwshort=%lld",payObj.bwintd);
    NSLog(@"bwuinta=%i",payObj.bwuinta);
    NSLog(@"bwuintb=%i",payObj.bwuintb);
    NSLog(@"bwuintc=%i",payObj.bwuintc);
    NSLog(@"bwuintd=%llu",payObj.bwuintd);
    NSLog(@"bwfloat=%f",payObj.bwfloat);
    NSLog(@"bwdouble=%f",payObj.bwdouble);
    NSLog(@"bwbool=%d",payObj.bwbool);
    NSLog(@"bwstring=%@",payObj.bwstring);
    NSLog(@"bwnumber=%@",payObj.bwnumber);
    NSLog(@"bwurl=%@",payObj.bwurl);
    NSLog(@"bwdata=%@",payObj.bwdata);
    
}
- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSetValueForKey {
    // This is an example of a functional test case.
    [_chameleonObj setValuesForKeysWithDictionary:_jsonDic];
    [self printBWPay:_chameleonObj];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end

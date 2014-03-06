//
//  NSString_CookieTests.m
//  NSString+CookieTests
//
//  Created by Luke on 3/5/14.
//  Copyright (c) 2014 taobao. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Cookie.h"

@interface NSString_CookieTests : XCTestCase

@end

@implementation NSString_CookieTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCookie
{
    
    NSString *baiduSetCookieString = @"ALIPAYJSESSIONID=8cKJPk4NZblJBh2yUsUDXvQZspLeC6appstore; Domain=.alipay.com; Path=/";
    NSHTTPCookie *cookie = [baiduSetCookieString cookie];
    XCTAssertEqualObjects(cookie.name, @"ALIPAYJSESSIONID", @"检测name");
    XCTAssertEqualObjects(cookie.value, @"8cKJPk4NZblJBh2yUsUDXvQZspLeC6appstore", @"检测value");
    XCTAssertEqualObjects(cookie.domain, @".alipay.com", @"检测domain");
    XCTAssertEqualObjects(cookie.path, @"/", @"检测path");
}

@end

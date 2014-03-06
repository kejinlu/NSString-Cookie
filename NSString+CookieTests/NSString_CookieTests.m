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
    
    NSString *alipaySetCookieString = @"ali_apache_id=10.228.255.113.1394110376595.4; path=/; domain=.alipay.com; expires=Wed, 30-Nov-2084 01:01:01 GMT";
    NSHTTPCookie *cookie = [alipaySetCookieString cookie];
    XCTAssertEqualObjects(cookie.name, @"ali_apache_id", @"检测name");
    XCTAssertEqualObjects(cookie.value, @"10.228.255.113.1394110376595.4", @"检测value");
    XCTAssertEqualObjects(cookie.domain, @".alipay.com", @"检测domain");
    XCTAssertEqualObjects(cookie.path, @"/", @"检测path");
    
    NSString *dateString = @"Wed, 30-Nov-2084 01:01:01 GMT" ;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEE, d-MMM-yyyy HH:mm:ss zzz"];
    NSDate *expiresDate = [dateFormatter dateFromString:dateString];
    
    XCTAssertEqualObjects(cookie.expiresDate, expiresDate, @"检测expires");
}

@end

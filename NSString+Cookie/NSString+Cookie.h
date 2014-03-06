//
//  NSString+Cookie.h
//  NSString+Cookie
//
//  Created by Luke on 3/5/14.
//  Copyright (c) 2014 taobao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(Cookie)

- (NSDictionary *)cookieMap;

- (NSDictionary *)cookieProperties;

- (NSHTTPCookie *)cookie;

@end

#### NSString-Cookie
===============
将单个Cookie字符串转成NSHTTPCookie对象.
单条Cookie由多个属性组成，各个属性由分号隔开。
具体的规范可以参见RFC文档: [http://tools.ietf.org/html/rfc6265](http://tools.ietf.org/html/rfc6265)

下面是支付宝网站的某个Set-Cookie的例子

`ali_apache_id=10.228.255.113.1394110376595.4; path=/; domain=.alipay.com; expires=Wed, 30-Nov-2084 01:01:01 GMT`
   
    NSString *baiduSetCookieString = @"ali_apache_id=10.228.255.113.1394110376595.4; path=/; domain=.alipay.com; expires=Wed, 30-Nov-2084 01:01:01 GMT";
    NSHTTPCookie *cookie = [baiduSetCookieString cookie];

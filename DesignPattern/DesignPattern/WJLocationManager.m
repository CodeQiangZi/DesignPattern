//
//  WJLocationManager.m
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/18.
//

#import "WJLocationManager.h"

@implementation WJLocationManager

+ (WJLocationManager *)sharedInstance {
    static WJLocationManager *s_instance = nil;
    static dispatch_once_t once_token;
    dispatch_once(&once_token, ^{
        s_instance =  [[super allocWithZone:NULL] init];
    });
    return s_instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [WJLocationManager sharedInstance];
}

- (instancetype)copyWithZone:(struct _NSZone *)zone {
    return [WJLocationManager sharedInstance];
}

- (instancetype)mutableCopyWithZone:(nullable NSZone *)zone {
    return [WJLocationManager sharedInstance];
}

@end

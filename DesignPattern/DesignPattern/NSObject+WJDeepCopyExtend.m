//
//  NSObject+WJDeepCopyExtend.m
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/17.
//

#import "NSObject+WJDeepCopyExtend.h"

@implementation NSObject (WJDeepCopyExtend)

- (id)wj_config_deepCopy {
    if ([self conformsToProtocol:@protocol(NSCopying)]) {
        return [self copy];
    }
    return self;
}

@end


@implementation NSArray (WJDeepCopyExtend)

- (NSArray *)wj_config_deepCopy {
    NSMutableArray *result = [NSMutableArray array];
    for (id item in self) {
        [result addObject:[item wj_config_deepCopy]];
    }
    return [result copy];
}

@end


@implementation NSMutableArray (WJDeepCopyExtend)

- (NSMutableArray *)wj_config_deepCopy {
    NSMutableArray *result = [NSMutableArray array];
    for (id item in self) {
        [result addObject:[item wj_config_deepCopy]];
    }
    return result;
}

@end


@implementation NSDictionary (WJDeepCopyExtend)

- (NSDictionary *)wj_config_deepCopy {
    NSMutableDictionary *result = [NSMutableDictionary dictionary];
    NSArray *arrKey = self.allKeys;
    for (id key in arrKey) {
        id value = [self objectForKey:key];
        [result setValue:[value wj_config_deepCopy]
                  forKey:[key wj_config_deepCopy]];
    }
    return [result copy];
}

@end


@implementation NSMutableDictionary (WJDeepCopyExtend)

- (NSMutableDictionary *)wj_config_deepCopy {
    NSMutableDictionary *result = [NSMutableDictionary dictionary];
    NSArray *arrKey = self.allKeys;
    for (id key in arrKey) {
        id value = [self objectForKey:key];
        [result setValue:[value wj_config_deepCopy]
                  forKey:[key wj_config_deepCopy]];
    }
    return result;
}

@end

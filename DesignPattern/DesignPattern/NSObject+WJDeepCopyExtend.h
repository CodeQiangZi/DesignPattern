//
//  NSObject+WJDeepCopyExtend.h
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (WJDeepCopyExtend)

- (id)wj_config_deepCopy;

@end


@interface NSArray (WJDeepCopyExtend)

- (NSArray *)wj_config_deepCopy;

@end


@interface NSMutableArray (WJDeepCopyExtend)

- (NSMutableArray *)wj_config_deepCopy;

@end


@interface NSDictionary (WJDeepCopyExtend)

- (NSDictionary *)wj_config_deepCopy;

@end


@interface NSMutableDictionary (WJDeepCopyExtend)

- (NSMutableDictionary *)wj_config_deepCopy;

@end

NS_ASSUME_NONNULL_END

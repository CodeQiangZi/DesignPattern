//
//  WJNumberInputValidator.h
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/18.
//

#import "WJInputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface WJNumberInputValidator : WJInputValidator

// 保证输入只包含数字（0-9）的验证方法
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END

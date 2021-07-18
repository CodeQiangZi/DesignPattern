//
//  WJAlphaInputValidator.h
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/18.
//

#import "WJInputValidator.h"

NS_ASSUME_NONNULL_BEGIN


@interface WJAlphaInputValidator : WJInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END

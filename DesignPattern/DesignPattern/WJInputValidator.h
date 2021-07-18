//
//  WJInputValidator.h
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/18.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

static NSString *const WJInputValidationErrorDomain = @"WJInputValidationErrorDomain";

@interface WJInputValidator : NSObject

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END

//
//  WJCustomerTextField.h
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/18.
//

#import <UIKit/UIKit.h>
#import "WJInputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface WJCustomerTextField : UITextField

@property (nonatomic, strong) WJInputValidator *inputValidator;

// 验证是否符合要求
- (BOOL)validate;

@end

NS_ASSUME_NONNULL_END

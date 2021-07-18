//
//  WJCustomerTextField.m
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/18.
//

#import "WJCustomerTextField.h"

@implementation WJCustomerTextField

- (BOOL)validate {
    NSError *error = nil;
    BOOL validatorResult = [self.inputValidator validateInput:self error:&error];

    if (!validatorResult) {
        NSLog(@"%@-%@", [error localizedDescription], [error localizedFailureReason]);
    }
    return validatorResult;
}

@end

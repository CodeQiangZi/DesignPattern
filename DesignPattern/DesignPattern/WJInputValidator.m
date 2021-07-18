//
//  WJInputValidator.m
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/18.
//

#import "WJInputValidator.h"

@implementation WJInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error {
    if (error) {
        *error = nil;
    }
    return NO;
}

@end

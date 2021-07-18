//
//  WJNumberInputValidator.m
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/18.
//

#import "WJNumberInputValidator.h"

@implementation WJNumberInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error {
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$"
                                                                           options:NSRegularExpressionAnchorsMatchLines
                                                                             error:&regError];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[input text]
                                                        options:NSMatchingAnchored
                                                          range:NSMakeRange(0, [[input text] length])];
    if (numberOfMatches == 0) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"Input Validation Failed", @"");
            NSString *reason = NSLocalizedString(@"The input can contain only numberical values", @"");
            
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray forKeys:keyArray];
            *error = [NSError errorWithDomain:WJInputValidationErrorDomain code:1001 userInfo:userInfo];
        }
        return NO;
    }
    return YES;
}

@end

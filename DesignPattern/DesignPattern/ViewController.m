//
//  ViewController.m
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/8.
//
/**
 * 定义一系列算法，把他们一个个封装起来，并且使它们可以相互替换。本模式使得算法可独立于使用它的客户而变化
 *
 * 如果代码中有很多条件语句，就可能意味着需要把它们重构成各种策略对象
 *
 * 优点：降低了代码的耦合度
 * 缺点：为了解决代码耦合度，我们需要创建更多的类（本例中使用了工厂模式来适配）
 */

#import "ViewController.h"
#import "WJCustomerTextField.h"
#import "WJAlphaInputValidator.h"
#import "WJNumberInputValidator.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet WJCustomerTextField *numberTextField;
@property (weak, nonatomic) IBOutlet WJCustomerTextField *alphaTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.numberTextField.delegate = self;
    self.numberTextField.inputValidator = [WJNumberInputValidator new];
    
    self.alphaTextField.delegate = self;
    self.alphaTextField.inputValidator = [WJAlphaInputValidator new];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    WJCustomerTextField *customerTextField = (id)textField;
    [customerTextField validate];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:NO];
}


@end

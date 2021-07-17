//
//  ViewController.m
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/8.
//

/**
 *  使用原型实例制定创建对象的种类，并通过复制这个原型创建新的对象
 */

#import "ViewController.h"
#import "WJPersonal.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WJPersonal *personal1 = [[WJPersonal alloc] init];
    personal1.userID = @"1";
    personal1.userName = @"qiangzi-01";
    personal1.userUrl = @"url-1";
    personal1.userCompany = @"网家科技";
    personal1.positionList = @[
        @[@"研发经理", @"研发组长", @"研发工程师"],
        @[@"设计经理", @"设计组长"],
    ];

    WJPersonal *personal2 = [personal1 copy];
    personal2.userID = @"2";
    personal2.userName = @"qiangzi-02";
    personal2.userUrl = @"url-2";
}


@end

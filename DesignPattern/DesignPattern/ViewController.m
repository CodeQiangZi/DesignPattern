//
//  ViewController.m
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/8.
//
/**
 * 保证一个类仅有一个实例，并提供一个访问它全局访问点
 *
 * 优点
 *  - 在内存里只有一个实例，减少了内存的开销（尤其是频繁的创建和销毁实例）
 *  - 避免对资源的多重占用
 *
 * 缺点
 *  - 没有接口，不能继承，与单一职责原则冲突，一个类应该只关心内部逻辑，而不关心外面怎么样来实例化
 */

#import "ViewController.h"
#import "WJLocationManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [WJLocationManager sharedInstance];
}


@end

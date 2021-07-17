//
//  WJPersonal.m
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/17.
//

#import "WJPersonal.h"
#import "NSObject+WJDeepCopyExtend.h"

@implementation WJPersonal

- (instancetype)copyWithZone:(NSZone *)zone {
    WJPersonal *itemInfo = [[[self class] allocWithZone:zone] init];
    itemInfo.userID = self.userID;
    itemInfo.userName = self.userName;
    itemInfo.userUrl = self.userUrl;
    itemInfo.userCompany = self.userCompany;
    itemInfo.positionList = [self.positionList wj_config_deepCopy];
    return itemInfo;
}

@end

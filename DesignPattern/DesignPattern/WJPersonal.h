//
//  WJPersonal.h
//  DesignPattern
//
//  Created by qiangzhi on 2021/7/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WJPersonal : NSObject <NSCopying>

@property (nonatomic, copy) NSString *userID;
@property (nonatomic, copy) NSString *userName;
@property (nonatomic, copy) NSString *userUrl;
@property (nonatomic, copy) NSString *userNickName;
@property (nonatomic, copy) NSString *userCompany;
@property (nonatomic, copy) NSArray *positionList;

@end

NS_ASSUME_NONNULL_END

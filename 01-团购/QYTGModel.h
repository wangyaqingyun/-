//
//  QYTGModel.h
//  01-团购
//
//  Created by qingyun on 15/9/17.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QYTGModel : NSObject
//声明属性
@property (nonatomic, strong) NSString *buycount;
@property (nonatomic, strong) NSString *icon;
@property (nonatomic, strong) NSString *price;
@property (nonatomic, strong) NSString *title;

//声明初始化方法
- (instancetype)initWithDictionary:(NSDictionary *)dict;
+ (instancetype)tgModelWithDictionary:(NSDictionary *)dict;
@end

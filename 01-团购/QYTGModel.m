//
//  QYTGModel.m
//  01-团购
//
//  Created by qingyun on 15/9/17.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "QYTGModel.h"

@implementation QYTGModel

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    if (self = [super init]) {
#if 0
        _buycount = dict[@"buycount"];
        _icon = dict[@"icon"];
        _price = dict[@"price"];
        _title = dict[@"title"];
#endif
        //灌入数据 从字典
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)tgModelWithDictionary:(NSDictionary *)dict
{
    return [[self alloc]initWithDictionary:dict];
}

@end

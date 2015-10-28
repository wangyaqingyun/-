//
//  QYTableViewCell.h
//  01-团购
//
//  Created by qingyun on 15/9/17.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
@class QYTGModel;
@interface QYTableViewCell : UITableViewCell
/*
@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *buycount;
*/

@property (nonatomic, strong) QYTGModel *model;
@end

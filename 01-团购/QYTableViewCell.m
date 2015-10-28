//
//  QYTableViewCell.m
//  01-团购
//
//  Created by qingyun on 15/9/17.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "QYTableViewCell.h"
#import "QYTGModel.h"

@interface QYTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UILabel *buycount;

@end

@implementation QYTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)setModel:(QYTGModel *)model
{
    _model = model;
    
    //自定义要完成的功能
    
    _icon.image = [UIImage imageNamed:model.icon];
    _title.text = model.title;
    _price.text = model.price;
    _buycount.text = model.buycount;
    
}
@end

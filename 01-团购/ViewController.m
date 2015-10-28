//
//  ViewController.m
//  01-团购
//
//  Created by qingyun on 15/9/17.
//  Copyright (c) 2015年 河南青云信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import "QYTGModel.h"
#import "QYTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong)NSArray *datas;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSArray *)datas
{
    if (_datas == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"tgs" ofType:@"plist"];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *datas = [NSMutableArray array];
        
        for (NSDictionary *dict in array) {
            QYTGModel *tgModel = [QYTGModel tgModelWithDictionary:dict];
            [datas addObject:tgModel];
        }
        _datas = datas;
    }
    return _datas;
}

#pragma mark - UITableView DataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datas.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    QYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QYCell" forIndexPath:indexPath];
    
    QYTGModel *tgModel = (QYTGModel *)self.datas[indexPath.row];
#if 0
    cell.icon.image = [UIImage imageNamed:tgModel.icon];
    cell.title.text = tgModel.title;
    cell.price.text = tgModel.price;
    cell.buycount.text = tgModel.buycount;
#endif
    cell.model = tgModel;
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

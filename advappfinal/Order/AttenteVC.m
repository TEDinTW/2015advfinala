//
//  AttenteVC.m
//  advappfinal
//
//  Created by ios on 2015/3/10.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "AttenteVC.h"
#import "JukunProducts.h"
@interface AttenteVC ()<UITableViewDataSource,UITableViewDelegate>{
    JukunProducts *jukunObj;
    NSInteger _selectRowInTableView1;
    NSInteger _selectRowInTableView2;
    int test;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView1;
@property (strong, nonatomic) IBOutlet UITableView *tableView2;

- (IBAction)saveData:(UIButton *)sender;




@end

@implementation AttenteVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView1.dataSource=self;
    _tableView1.delegate=self;
    _tableView2.dataSource=self;
    _tableView2.delegate=self;
    jukunObj=[[JukunProducts alloc]initWithJsonPath:@"4_order1"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    if (tableView.tag==1) {
        return [jukunObj.products count];
    }else{
//        NSArray *datas=[[jukunObj.products objectAtIndex:_selectRowInTableView1]objectForKey:@"Menu_List"];
        return [[[jukunObj.products objectAtIndex:_selectRowInTableView1]objectForKey:@"Menu_List"]count];
    }
    
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
//    static NSString* CellID=@"myCellID";
    cell=[tableView dequeueReusableCellWithIdentifier:@"myCell"];
//    if (cell==nil) {
//        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellID];
//    }
    if (tableView.tag==1) {
        cell.textLabel.text=[[jukunObj.products objectAtIndex:indexPath.row]objectForKey:@"Product_Item"];
    }else{
        cell.textLabel.text=[[[[jukunObj.products objectAtIndex:_selectRowInTableView1]objectForKey:@"Menu_List"]objectAtIndex:indexPath.row]objectForKey:@"name"];
        //讀取json中的price,用number來接
        NSNumber *number=[[[[jukunObj.products objectAtIndex:_selectRowInTableView1]objectForKey:@"Menu_List"]objectAtIndex:indexPath.row]objectForKey:@"price"];
    
        cell.detailTextLabel.text= [[NSString alloc]initWithFormat:@"%@",number];
        //字體顏色
        cell.detailTextLabel.textColor=[UIColor colorWithRed:54.0/255.0 green:161.0/255.0 blue:219.0/255.0 alpha:1];

    }
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView.tag==1) {
        _selectRowInTableView1=indexPath.row;
        _tableView2.frame=CGRectMake(137, 28, 10, 10);
        _tableView2.alpha=0.3;
        [UIView animateWithDuration:2.0 animations:^{
            _tableView2.frame=CGRectMake(137, 28, 211, 300);
            _tableView2.alpha=1.0;
        }];
        
        [_tableView2 reloadData];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveData:(UIButton *)sender {
    //NSJSONSerialization
   // NSDictionary* dict1 =
//    UITableViewCell *cell;
//    cell.contentView.
//    NSDictionary* dict2 = @{@"name":@"a",@"price":@"b"};
    

    //    NSLog(@"%@",dict2);
    //_ProductItem.set
    
    //NSString *data=[jukunObj.products objectAtIndex:_selectRowInTableView1];
//    NSLog(@"%@",);

}
@end

//
//  TEDConfirmVC.m
//  advappfinal
//
//  Created by cheng Yi Hsin on 2015/3/12.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "TEDConfirmVC.h"

@interface TEDConfirmVC ()
{

 
}
@end

@implementation TEDConfirmVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    _dataCell.delegate=self;
//    _dataCell.dataSource=self;
    
    NSLog(@"%@",self.order.count);
    
    NSLog(@"%d",[[self.order objectAtIndex:0]objectForKey:@"mProName"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return [self.order count];
//}
//
//// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
//// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    UITableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:@"dataCell"];
//    if(!cell){
//        [tableView registerNib:[UINib nibWithNibName:@"" bundle:nil] forCellReuseIdentifier:@"dataCell"];
//        cell=[tableView dequeueReusableCellWithIdentifier:@"dataCell"];
//    }
//    
//   //_dataCell = [[self.order objectAtIndex:indexPath.row]objectForKey:@"mProName"];
//    
//    return cell;
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

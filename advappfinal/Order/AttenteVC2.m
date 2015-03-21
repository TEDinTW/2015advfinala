//
//  AttenteVC2.m
//  advappfinal
//
//  Created by ios on 2015/3/17.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "AttenteVC2.h"

@interface AttenteVC2 ()<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray* _data;
    NSInteger _TableViewData;

}
@property (strong, nonatomic) IBOutlet UITableView *tableView_Data;

@end

@implementation AttenteVC2

- (void)viewDidLoad {
    [super viewDidLoad];
  
    _tableView_Data.dataSource=self;
    _tableView_Data.delegate=self;
    
    NSLog(@"%@",[[self.order objectAtIndex:0]objectForKey:@"mProName"]);

  
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.order count];
    //return 3;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:@"dataCell"];
    
    //objectAtIndex:_selectRowInTableView1]objectForKey:@"Menu_List"]
   

    NSLog(@"%@",[[self.order objectAtIndex:indexPath.row]objectForKey:@"subProName"]);
    NSLog(@"%@",[[self.order objectAtIndex:indexPath.row]objectForKey:@"price"]);
    NSLog(@"%@",[[self.order objectAtIndex:indexPath.row]objectForKey:@"num"]);

    
    
    
    
    //努力尋找label中
     int prices;
    for (UILabel *lbl in cell.contentView.subviews) {

        switch (lbl.tag) {
            case 11:
                lbl.text =[[self.order objectAtIndex:indexPath.row]objectForKey:@"subProName"];
                break;
            case 12:
                lbl.text =[[NSString alloc]initWithFormat:@"%@", [[self.order objectAtIndex:indexPath.row]objectForKey:@"num"]];
                break;
            case 13:
                
               
                prices = [[[self.order objectAtIndex:indexPath.row]objectForKey:@"num"] intValue] * [[[self.order objectAtIndex:indexPath.row]objectForKey:@"price"] intValue];
                lbl.text =[[NSString alloc]initWithFormat:@"%d", prices];
                
               
                break;
                
            }
    }

    
       return cell;
}








/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

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
    
    
    //努力尋找label中
    UILabel* label = (UILabel *)[self.view viewWithTag:1];
    [label setText:@"aaa"];
    label.text = [[self.order objectAtIndex:_TableViewData]objectForKey:@"subProName"];
    
    
    if(self.view.tag ==1){
       //  = [[self.order objectAtIndex:_TableViewData]objectForKey:@"subProName"];
        

    //cell.textLabel.text = [[self.order objectAtIndex:_TableViewData]objectForKey:@"subProName"];
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

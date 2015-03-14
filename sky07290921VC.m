////
////  sky07290921VC.m
////  advappfinal
////
////  Created by Ke Hui-Ching on 2015/3/12.
////  Copyright (c) 2015年 liangjason. All rights reserved.
////
//
//#import "sky07290921VC.h"
//
//@interface sky07290921VC ()
//
<<<<<<< Updated upstream
//@end
//
//@implementation sky07290921VC
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//    
//    // (1) 讀取 JSON 字串
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"2_news1" ofType:@"json"];
//    NSData *data = [NSData dataWithContentsOfFile:path];
//    // (2) 解析 JSON 字串
//    news = [NSJSONSerialization JSONObjectWithData:data
//                                                       options:NSJSONReadingMutableContainers
//                                                         error:nil];
//    // (3) 利用迴圈印出解析後的結果
////    for (NSDictionary *p in news) {
////        NSString *title = [p objectForKey:@"title"];
////        NSString *content  = [p objectForKey:@"content"];
////        NSString *update_time   = [p objectForKey:@"update_time"];
////        
////        NSLog(@"標題：%@/n內容：%@/n更新時間：%@", title, content, update_time);
////    }
//
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return news.count;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
//    cell.textLabel.text = [[news objectAtIndex:indexPath.row] objectForKey:@"title"];
//    return cell;
//}
//
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//    if ([[segue identifier] isEqualToString:@"DetailVC"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        [[segue destinationViewController] setDetailItem:[json_array
//                                                          objectAtIndex:indexPath.row]];
//    }
//}
//
///*
//#pragma mark - Navigation
//
//// In a storyboard-based application, you will often want to do a little preparation before navigation
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    // Get the new view controller using [segue destinationViewController].
//    // Pass the selected object to the new view controller.
//}
//*/
//
//@end
=======

#import "sky07290921VC.h"
#import "DetailVC.h"

@interface sky07290921VC ()

@end

@implementation sky07290921VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // (1) 讀取 JSON 字串
    NSString *path = [[NSBundle mainBundle] pathForResource:@"2_news1" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    // (2) 解析 JSON 字串
    news = [NSJSONSerialization JSONObjectWithData:data
                                                       options:NSJSONReadingMutableContainers
                                                         error:nil];
    // (3) 利用迴圈印出解析後的結果
    for (NSDictionary *p in news) {
        NSString *title = [p objectForKey:@"title"];
        NSString *content  = [p objectForKey:@"content"];
        NSString *update_time   = [p objectForKey:@"update_time"];
        NSLog(@"\n標題：%@\n內容：%@\n更新時間：%@", title, content, update_time);
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Table View Cell回傳個數
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return news.count;
}

//Cell顯示的文字，透過objectForKey方法指定Key值
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //製作可重複利用的表格欄位Cell
    static NSString *identifier=@"myCell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    //設定欄位的內容
    cell.textLabel.text = [[news objectAtIndex:indexPath.row] objectForKey:@"title"];
    
    //設定欄位的類型：揭露指示器
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        //利用index取得陣列內的物件
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        //使用segue將物件傳給DetailVC class
        [[segue destinationViewController] setDetailItem:[news
                                                          objectAtIndex:indexPath.row]];
    }
//    //利用index取得陣列內的物件
//    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
//    NSString *roleName = [news objectAtIndex:path.row];
//
//    //使用segue將物件傳給Detail View Controller class
//    [segue.destinationViewController setDetailItem:roleName];
//    if ([[segue identifier] isEqualToString:@"showDetail"]) {
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSDictionary *tmpDict = [news objectAtIndex:indexPath.row];
//        NSManagedObject *object = [[self fetchedResultsController] objectAtIndexPath:indexPath];
//        //呼叫目的地的ViewController的方法來傳值
//        [[segue destinationViewController] setDetailItem:object];
    
//        [[segue destinationViewController] setData:tmpDict ForKey:@"title"];
//        [[segue destinationViewController] setDetailItem:[tmpDict objectForKey:@"content"]];
//        [[segue destinationViewController] setDetailItem:[news objectAtIndex:indexPath.row]];
//    }
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
>>>>>>> Stashed changes

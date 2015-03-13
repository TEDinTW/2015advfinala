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

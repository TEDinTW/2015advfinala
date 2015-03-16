//
//  DetailVC.m
//  advappfinal
//
//  Created by Ke Hui-Ching on 2015/3/12.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "DetailVC.h"

@interface DetailVC ()

@end

@implementation DetailVC
@synthesize detailItem;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%@",detailItem);
    //設定Navigation Bar的title
    self.navigationItem.title = self.detailItem[@"title"];
    //設定欄位的內容
    self.time.text = self.detailItem[@"update_time"];
    self.content.text = self.detailItem[@"content"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  advappfinal
//
//  Created by ios on 2015/3/6.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "ViewController.h"
#import "AFHTTPRequestOperationManager.h"

#import "APPGTool.h"
#import "TEDVC2.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TEDVC2 *view = [[TEDVC2 alloc]initWithNibName:@"TEDVC2" bundle:nil];
    
//    [self.view addSubview:view.view];
    [self presentViewController:view animated:YES completion:nil];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    NSString *tmpStr=[NSString stringWithFormat:@"%@ted_temp/pdf_json.php?category=5",[APPGTool getWebServerURL]];
    
    [manager GET:tmpStr parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

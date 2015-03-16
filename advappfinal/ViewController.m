//
//  ViewController.m
//  advappfinal
//
//  Created by ios on 2015/3/6.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "ViewController.h"
#import "AFHTTPRequestOperationManager.h"
#import "DetailVC.h"
#import "APPGTool.h"
#import "TEDVC2.h"
#import "ZuProduct.h"
#import "AttenteVC.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *btn0;
- (IBAction)orderBtn:(UIButton *)sender;
- (IBAction)productBtn:(UIButton *)sender;
- (IBAction)newsBtn:(UIButton *)sender;
- (IBAction)aboutBtn:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *btn1;
@property (strong, nonatomic) IBOutlet UIButton *btn2;
@property (strong, nonatomic) IBOutlet UIButton *btn3;
@property (strong, nonatomic) IBOutlet UIButton *btn4;
@property (strong, nonatomic) IBOutlet UIButton *btn5;
@property (strong, nonatomic) IBOutlet UIButton *btn6;
@property (strong, nonatomic) IBOutlet UIButton *about;
@property (strong, nonatomic) IBOutlet UIButton *news;
@property (strong, nonatomic) IBOutlet UIButton *product;
@property (strong, nonatomic) IBOutlet UIButton *order;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    TEDVC2 *view = [[TEDVC2 alloc]initWithNibName:@"TEDVC2" bundle:nil];
    
//    [self.view addSubview:view.view];
    [self presentViewController:view animated:YES completion:nil];
    
    self.about.alpha=0;
    self.news.alpha=0;
    self.product.alpha=0;
    self.order.alpha=0;
    self.btn0.alpha=0;
    self.btn1.alpha = 0;
    self.btn2.alpha = 0;
    self.btn3.alpha = 0;
    self.btn4.alpha = 0;
    self.btn5.alpha = 0;
    self.btn6.alpha = 0;
    [UIButton animateWithDuration:6.0 animations:^{
        self.about.alpha=1;
        self.news.alpha=1;
        self.product.alpha=1;
        self.order.alpha=1;
        self.btn1.alpha=1;
        self.btn2.alpha=1;
        self.btn3.alpha=1;
        self.btn4.alpha=1;
        self.btn5.alpha=1;
        self.btn6.alpha=1;
        self.btn0.alpha=0.5;
        _btn1.frame=CGRectMake(196, 211, 70, 70);
        _btn2.frame=CGRectMake(196, 211, 70, 70);
        _btn3.frame=CGRectMake(196, 211, 70, 70);
        _btn4.frame=CGRectMake(196, 211, 70, 70);
        _btn5.frame=CGRectMake(196, 211, 70, 70);
        _btn6.frame=CGRectMake(196, 211, 70, 70);
    }];
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

- (IBAction)productBtn:(UIButton *)sender {
    ZuProduct *productview = [[ZuProduct alloc]initWithNibName:@"ZuProduct" bundle:nil];
    [self presentViewController:productview animated:YES completion:nil];}


- (IBAction)newsBtn:(UIButton *)sender {
 DetailVC *newsview = [[DetailVC alloc]initWithNibName:@"DetailVC" bundle:nil];
    [self presentViewController:newsview animated:YES completion:nil];}

- (IBAction)aboutBtn:(UIButton *)sender {
}
- (IBAction)orderBtn:(UIButton *)sender {
  AttenteVC *orderview = [[AttenteVC alloc]initWithNibName:@"AttenteVC" bundle:nil];
  [self presentViewController:orderview animated:YES completion:nil];
}
@end

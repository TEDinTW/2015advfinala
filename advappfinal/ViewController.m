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
@property (strong, nonatomic) IBOutlet UIButton *btn1;
@property (strong, nonatomic) IBOutlet UIButton *btn2;
@property (strong, nonatomic) IBOutlet UIButton *btn3;
@property (strong, nonatomic) IBOutlet UIButton *btn4;
@property (strong, nonatomic) IBOutlet UIButton *btn5;
@property (strong, nonatomic) IBOutlet UIButton *btn6;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    TEDVC2 *view = [[TEDVC2 alloc]initWithNibName:@"TEDVC2" bundle:nil];
    
//    [self.view addSubview:view.view];
//    [self presentViewController:view animated:YES completion:nil];
    
    self.btn0.alpha = 0;
    self.btn1.alpha = 0;
    self.btn2.alpha = 0;
    self.btn3.alpha = 0;
    self.btn4.alpha = 0;
    self.btn5.alpha = 0;
    self.btn6.alpha = 0;
    
    
    [UIView animateWithDuration:3.0 animations:^{
        self.btn1.alpha=0.3;
        self.btn2.alpha=1;
        self.btn3.alpha=1;
        self.btn4.alpha=1;
        self.btn5.alpha=1;
        self.btn6.alpha=1;
        self.btn0.alpha=0.5;
        _btn1.frame=CGRectMake(self.view.frame.size.width*196/414.0,self.view.frame.size.height*211/736,self.view.frame.size.width*700/414,self.view.frame.size.height*70/736);
        _btn2.frame=CGRectMake(self.view.frame.size.width*90/414.0,self.view.frame.size.height*200/736,self.view.frame.size.width*70/414,self.view.frame.size.height*70/736);
        _btn3.frame=CGRectMake(self.view.frame.size.width*271/414.0,self.view.frame.size.height*222/736,self.view.frame.size.width*70/414,self.view.frame.size.height*70/736);
        _btn4.frame=CGRectMake(self.view.frame.size.width*102/414.0,self.view.frame.size.height*313/736,self.view.frame.size.width*70/414,self.view.frame.size.height*70/736);
        _btn5.frame=CGRectMake(self.view.frame.size.width*271/414,self.view.frame.size.height*313/736,self.view.frame.size.width*70/414,self.view.frame.size.height*70/736);
        _btn6.frame=CGRectMake(self.view.frame.size.width*189/414,self.view.frame.size.height*400/736,self.view.frame.size.width*70/414,self.view.frame.size.height*70/736);
    }];
   
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    NSString *tmpStr=[NSString stringWithFormat:@"%@ted_temp/pdf_json.php?category=5",[APPGTool getWebServerURL]];
//    [manager GET:tmpStr parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"JSON: %@", responseObject);
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

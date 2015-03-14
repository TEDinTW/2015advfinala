//
//  zuProductDetail.m
//  advappfinal
//
//  Created by zu on 2015/3/13.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "zuProductDetail.h"

@interface zuProductDetail ()
{
    NSDictionary *dict;
//    UILabel *prdNameLabel;
}

@end

@implementation zuProductDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   
    //產品名的文字標籤
//    prdNameLabel.textColor =[UIColor blackColor];
    
//    [prdNameLabel objectAtIndex:0];
  //  lbl.text=[dict objectForKey:@"firstName"];
    
//    prdNameLabel.backgroundColor=[UIColor purpleColor];
    
    //產品圖
    UIImageView *prdImg = [[UIImageView alloc]initWithFrame:CGRectMake(36, 156, 303, 303)];
    prdImg.backgroundColor=[UIColor yellowColor];
    
    
    
    
    [self.view addSubview:prdImg];
    
    [self getJson];

    NSArray *prds = [dict objectForKey:@"prd"];
    NSDictionary *dict1 =[prds objectAtIndex:0];

    NSLog(@"%@",dict1);
    
    UILabel * prdNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(45, 76, 285, 36)];
    prdNameLabel.text=[dict1 objectForKey:@"prdID"];
    prdNameLabel.backgroundColor = [UIColor redColor];
    [self.view addSubview:prdNameLabel];
 
//    [self getJson];
    NSLog(@"%@",[dict1 objectForKey:@"prdID"]);
    
//    [self getJson];
}


-(void)getJson{
    NSString *filePath=[[NSBundle mainBundle]pathForResource:@"3_product1" ofType:@"json"]; //拿專案裡的檔案
    NSData *data=[NSData dataWithContentsOfFile:filePath];
    NSError *error;
    dict=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    
    
    
//    prdNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(45, 76, 285, 36)];//產品名
//    prdNameLabel.text= @"abc";
    
//    prdNameLabel.text=[dict objectForKey:@"prdID"];
//    [self.view addSubview:prdNameLabel];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

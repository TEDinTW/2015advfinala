//
//  zuProductDetail.m
//  advappfinal
//
//  Created by zu on 2015/3/13.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "zuProductDetail.h"
#import "ZuProduct.h"

@interface zuProductDetail ()
{
    NSDictionary *dict, *dict1;
    UIButton *imgButton;
    UIView *upperView;
//    UILabel *prdNameLabel;
}

@end

@implementation zuProductDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    
    
    [self getJson];
    [self productNameLabel];
    [self productNameImage];
    [self productIntroView];
    

}


//撈JSON
-(void)getJson{

    NSString *filePath=[[NSBundle mainBundle]pathForResource:@"3_product1" ofType:@"json"]; //拿專案裡的檔案
    NSData *data=[NSData dataWithContentsOfFile:filePath];
    NSError *error;
    dict=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    
    NSArray *prds = [dict objectForKey:@"prd"];
    dict1 =[prds objectAtIndex:5];          //第幾個產品 從0開始
    NSLog(@"%@",dict1);
    NSLog(@"%@",[dict1 objectForKey:@"prdName"]);
    NSLog(@"%@",[dict1 objectForKey:@"prdImg"]);
    NSLog(@"%@",[dict1 objectForKey:@"prdIntro"]);
 
}

//產品名
-(void)productNameLabel
{
    UILabel * prdNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(45, 76, 285, 36)];
    prdNameLabel.text=[dict1 objectForKey:@"prdName"];
    prdNameLabel.backgroundColor = [UIColor redColor];
    [self.view addSubview:prdNameLabel];
}



//產品圖
-(void)productNameImage
{

    UIImageView *prdImgView = [[UIImageView alloc]initWithFrame:CGRectMake(36, 156, 303, 303)];
 //   NSString *img=[NSString stringWithFormat:@"flowerfreshbeanflower.png"];
 //   prdImgView.image=[UIImage imageNamed:img];
    prdImgView.image=[UIImage imageNamed:[dict1 objectForKey:@"prdImg"]];
    prdImgView.backgroundColor=[UIColor yellowColor];
    imgButton = [[UIButton alloc]initWithFrame:CGRectMake(36, 156, 303, 303)];
    [imgButton addTarget:self action:@selector(productIntroView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:prdImgView];
    [self.view addSubview:imgButton];
}

-(void)productIntroView
{
    upperView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
    upperView.backgroundColor = [UIColor blackColor];
    upperView.alpha=0.7;
  //  upperView.hidden=NO;
    
    if(upperView.hidden==YES){
        upperView.hidden=NO;
        NSLog(@"upperView no hidden");
    }else{
        upperView.hidden=YES;
        NSLog(@"upperView hidden");
    }
    [self.view addSubview:upperView];

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

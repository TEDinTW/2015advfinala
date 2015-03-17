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
    UILabel *introLabel;
    NSString *str;
//    UILabel *prdNameLabel;
}

@end

@implementation zuProductDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
  //  self.view.backgroundColor=[UIColor grayColor];
  //  self.view.backgroundColor=[UIColor colorWithWhite:0.5 alpha:6];
    [self getJson];
    [self productNameLabel];
    [self productNameImage];
    [self productIntroView];
    [self productIntroLabel];
    
}


#pragma mark - 撈JSON
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



#pragma mark - 產品名(prdNameLabel)
-(void)productNameLabel
{
    UILabel * prdNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(45, 66, 285, 36)];
    prdNameLabel.text=[dict1 objectForKey:@"prdName"];
    //prdNameLabel.backgroundColor = [UIColor redColor];
    [self.view addSubview:prdNameLabel];
}



#pragma mark - 產品圖(prdImgView)
-(void)productNameImage
{

    UIImageView *prdImgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 140, 375, 375)];
 //   NSString *img=[NSString stringWithFormat:@"flowerfreshbeanflower.png"];
 //   prdImgView.image=[UIImage imageNamed:img];
    prdImgView.image=[UIImage imageNamed:[dict1 objectForKey:@"prdImg"]];
    //prdImgView.backgroundColor=[UIColor yellowColor];
    //產品圖的按鈕
    imgButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 140, 375, 375)];
    [imgButton addTarget:self action:@selector(imgButtonPushed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:prdImgView];
    [self.view addSubview:imgButton];
}



#pragma mark - upperView
-(void)productIntroView{
    upperView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 667)];
    upperView.backgroundColor = [UIColor blackColor];
    upperView.alpha=0.0f;
    upperView.userInteractionEnabled=NO; //不遮下面的元件
}



-(void)productIntroLabel{
    //介紹文字
    introLabel = [[UILabel alloc]initWithFrame:CGRectMake( 16, 532, 343, 127)];
    //introLabel.backgroundColor = [UIColor redColor];
    introLabel.textColor=[UIColor whiteColor];
    introLabel.text=[dict1 objectForKey:@"prdIntro"];
    [introLabel setNumberOfLines:0];  //換行
    introLabel.alpha=0.0f;
  //  [self upperViewAnimated];
    [self.view addSubview:introLabel];
}


#pragma mark - 按下產品圖,出現upperView
-(void)imgButtonPushed{
    if(upperView.alpha==0.0f){
       // upperView.hidden=NO;
       // upperView.alpha=0.0f;
        NSLog(@"upperView no hidden");
        [self upperViewAnimated];
    }else{
       // upperView.alpha=0.7f;
       // upperView.hidden=YES;
        NSLog(@"upperView hidden");
        [self upperViewAnimated];
    }
    [self.view addSubview:upperView];
}



#pragma mark - 淡入淡出動畫
-(void)upperViewAnimated{
    if(upperView.alpha==0.0f){
        [UIView animateWithDuration:0.5 animations:^{
            upperView.frame=CGRectMake(0, 0, 375, 667);
            upperView.alpha=0.7f;
            introLabel.alpha=1.0f;
            self.view.backgroundColor=[UIColor grayColor];
        }completion:^(BOOL finished){}];
    }else{
        [UIView animateWithDuration:0.5 animations:^{
            upperView.frame=CGRectMake(0, 0, 375, 667);
            upperView.alpha=0.0f;
            introLabel.alpha=0.0f;
            self.view.backgroundColor=[UIColor whiteColor];
        } completion:^(BOOL finished){}];
    }
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

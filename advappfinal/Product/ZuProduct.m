//
//  Product.m
//  advappfinal
//
//  Created by zu on 2015/3/12.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "ZuProduct.h"
#import "zuProductDetail.h"

@interface ZuProduct ()
//主餐View
@property (weak, nonatomic) IBOutlet UIView *mainView;
//配料View
@property (weak, nonatomic) IBOutlet UIView *secView;
//產品View
@property (weak, nonatomic) IBOutlet UIButton *prdImgBtn;

- (IBAction)prdImgBtnAction:(id)sender;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *secBtnCollection;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *mainBtnCollection;

@end

@implementation ZuProduct

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //mainView初始位置
    self.mainView.frame = CGRectMake(27, 670, self.mainView.frame.size.width, self.mainView.frame.size.height);
    //secView初始狀態
    self.secView.hidden=YES;    
//    //測試用得Btn
//    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 50, 50)];
//    btn.backgroundColor = [UIColor redColor];
//    [self.view addSubview:btn];
//    [btn addTarget:self action:@selector(testViewHidden) forControlEvents:UIControlEventTouchUpInside];

    //mainView的Btn
//    UIButton *mainViewBtn = [[UIButton alloc]initWithFrame:CGRectMake(83, 225, 218, 218)];
//    btn.backgroundColor = [UIColor redColor];
//    [self.view addSubview:mainViewBtn];
//    [btn addTarget:self action:@selector(mainViewBtnGet) forControlEvents:UIControlEventTouchUpInside];
    main = 0;
    sec = 0;
//    //productViewBtn
  //  [self mainViewBtn];
    
    
    //mainView 飛入動畫
    [self mainViewHiddenAnimated];
    
    
    //mainView按鈕選項
    [self mainBtnTag];

    //secView按鈕選項
    [self secBtnTag];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//測試用的Btn方法
-(void)testViewHidden{
    //secView的初始位置
    self.secView.frame = CGRectMake(32, 670, self.secView.frame.size.width, self.secView.frame.size.height);
    if (_secView.hidden == YES) {
        _secView.hidden = NO;
        _mainView.hidden = YES;
        //使mainView回到初始位置
        self.mainView.frame = CGRectMake(27, 670, self.mainView.frame.size.width, self.mainView.frame.size.height);
        [self secViewHiddenAnimated];
//        _mainView
    }else{
        _secView.hidden = YES;
        _mainView.hidden = NO;
        //使secView回到初始位置
        self.secView.frame = CGRectMake(32, 670, self.secView.frame.size.width, self.secView.frame.size.height);
        [self mainViewHiddenAnimated];
        
    }
}
//mainView 飛入動畫方法
-(void)mainViewHiddenAnimated{
    [UIView animateWithDuration:1.0 animations:^{
        _mainView.frame=CGRectMake(27, 596, 310, 63);
        _mainView.alpha=1.0;
    } completion:^(BOOL finished) {
        if (finished == true) {
            NSLog(@"finished = true");
        }else{
            NSLog(@"finished = false");
        }
    }];
}

//secView 飛入動畫方法
-(void)secViewHiddenAnimated{
    [UIView animateWithDuration:1.0 animations:^{
        _secView.frame=CGRectMake(32, 545, 310, 114);
        _secView.alpha=1.0;
    } completion:^(BOOL finished) {
        if (finished == true) {
            NSLog(@"finished = true");
        }else{
            NSLog(@"finished = false");
        }
    }];
}

-(void)mainBtnTag{
    for (btn0 in _mainBtnCollection) {
        
        [btn0 addTarget:self action:@selector(mBtnHandle:) forControlEvents:UIControlEventTouchUpInside];
    }
}

-(void)sendMainTag:(UIButton *)sender{
    main = sender.tag;
    NSLog(@"%d",main);

}



-(void)secBtnTag{
    for (btn1 in _secBtnCollection) {
        
        [btn1 addTarget:self action:@selector(sBtnHandle:) forControlEvents:UIControlEventTouchUpInside];

    }
}
//按鈕secTag值傳遞
-(void)sendSecTag:(UIButton *)sender{
    sec = sender.tag;
    NSLog(@"%d",sec);
}

-(void)mainViewBtnGet{
    if (sec == 0) {
        mainViewImage = [NSString stringWithFormat:@"%d.jpg",main];
        NSLog(@"%@",mainViewImage);

//        mainViewImage = [main stringByAppendingString:@".jpg"];
        UIImage *proImg = [UIImage imageNamed:mainViewImage];
        [self.prdImgBtn setBackgroundImage:proImg forState:UIControlStateNormal];
//        [_productView setBackgroundColor:[UIColor colorWithPatternImage:proImg]];
    }else{
        mainViewImage = [NSString stringWithFormat:@"%d_%d.jpg",main,sec];
        NSLog(@"%@",mainViewImage);
//
////        mainViewImage = [main stringByAppendingString:sec];
        UIImage *proImg = [UIImage imageNamed:mainViewImage];
//        [_productView setBackgroundColor:[UIColor colorWithPatternImage:proImg]];
        [self.prdImgBtn setBackgroundImage:proImg forState:UIControlStateNormal];
    }
}

//-(void)mainViewBtn{
//    //mainView的Btn
//    UIButton *MVBtn = [[UIButton alloc]initWithFrame:CGRectMake(83, 225, 218, 218)];
//    [self.view addSubview:MVBtn];
//    [MVBtn addTarget:self action:@selector(mainViewBtnGet) forControlEvents:UIControlEventTouchUpInside];
//}

-(void)sBtnHandle:(UIButton *)sender{
    [self testViewHidden];
    [self sendSecTag:sender];
    [self mainViewBtnGet];
}

-(void)mBtnHandle:(UIButton *)sender{
    [self testViewHidden];
    [self sendMainTag:sender];
    [self mainViewBtnGet];

 }

#pragma mark - 下一頁
-(void)prePageButton:(UIButton*)sender{
    NSLog(@"上一頁");
    //     [self performSegueWithIdentifier:@"ZuProduct" sender:nil];
    //    [self dismissViewControllerAnimated:YES completion:nil];
    ZuProduct *zuPrdDetail;
    zuPrdDetail=[self.storyboard instantiateViewControllerWithIdentifier:@"zuProductDetail"];
    //    =[[ZuProduct alloc]init]; //回到上一頁
    [self presentViewController:zuPrdDetail animated:YES completion:nil];

//
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)prdImgBtnAction:(id)sender {
    NSLog(@"傳送＋換頁");
    ZuProduct *detailPage=[self.storyboard instantiateViewControllerWithIdentifier:@"zuProductDetail"];
    [self presentViewController:detailPage animated:YES completion:nil];
}
@end

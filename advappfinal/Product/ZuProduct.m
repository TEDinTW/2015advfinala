//
//  Product.m
//  advappfinal
//
//  Created by zu on 2015/3/12.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "ZuProduct.h"

@interface ZuProduct ()
//主餐View
@property (weak, nonatomic) IBOutlet UIView *mainView;
//配料View
@property (weak, nonatomic) IBOutlet UIView *secView;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *secBtnCollection;
@end

@implementation ZuProduct

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //mainView初始位置
    self.mainView.frame = CGRectMake(27, 670, self.mainView.frame.size.width, self.mainView.frame.size.height);
    //secView初始狀態
    self.secView.hidden=YES;
   // self.secView.frame=CGPointMake(20, 40);
    
    //測試用得Btn
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(testViewHidden) forControlEvents:UIControlEventTouchUpInside];

    
    //mainView 飛入動畫
    [self mainViewHiddenAnimated];
    
    
    //secView按鈕選項
    [self BtnTag];
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

-(void)BtnTag{
    for (btn1 in _secBtnCollection) {
        switch (btn1.tag) {
            case 1:
                [btn1 addTarget:self action:@selector(sendTag:) forControlEvents:UIControlEventTouchUpInside];
                NSLog(@"tag = 1");
                break;
            case 2:
                [btn1 addTarget:self action:@selector(sendTag:) forControlEvents:UIControlEventTouchUpInside
                NSLog(@"tag = 2");
                break;
            case 3:
                [btn1 addTarget:self action:@selector(sendTag:) forControlEvents:UIControlEventTouchUpInside];
                NSLog(@"tag = 3");
                break;
            case 4:
                [btn1 addTarget:self action:@selector(sendTag:) forControlEvents:UIControlEventTouchUpInside];
                NSLog(@"tag = 4");
                break;
            case 5:
                [btn1 addTarget:self action:@selector(sendTag:) forControlEvents:UIControlEventTouchUpInside];
                NSLog(@"tag = 5");
                break;
            case 6:
                [btn1 addTarget:self action:@selector(sendTag:) forControlEvents:UIControlEventTouchUpInside];
                NSLog(@"tag = 6");
                break;
            case 7:
                [btn1 addTarget:self action:@selector(sendTag:) forControlEvents:UIControlEventTouchUpInside];
                NSLog(@"tag = 7");
                break;
                
            default:
                break;
        }
    }
}
//按鈕Tag值傳遞
-(void)sendTag:(UIButton *)sender{
    switch (sender.tag) {
        case 1:
            NSLog(@"tag = 1.1");
            break;
        case 2:
            NSLog(@"tag = 1.2");
            break;
        case 3:
            NSLog(@"tag = 1.3");
            break;
        case 4:
            NSLog(@"tag = 1.4");
            break;
        case 5:
            NSLog(@"tag = 1.5");
            break;
        case 6:
            NSLog(@"tag = 1.6");
            break;
            
        case 7:
            NSLog(@"tag = 1.7");
            break;
            
        default:
            break;
    }
}

-(void)receiveMainView{
    
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

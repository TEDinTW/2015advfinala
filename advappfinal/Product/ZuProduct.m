//
//  Product.m
//  advappfinal
//
//  Created by zu on 2015/3/12.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "ZuProduct.h"

@interface ZuProduct ()
{
    UIButton *btn;
}
@property (weak, nonatomic) IBOutlet UIView *mainView;
@property (weak, nonatomic) IBOutlet UIView *secView;

@end

@implementation ZuProduct

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mainView.hidden=NO;
    self.secView.hidden=YES;
    [btn addTarget:self action:@selector(pushBtn:) forControlEvents:UIControlEventTouchUpInside];
    self.secView.frame=CGRectMake(32, 648, 310, 114);
    //UIView *secview =[[UIView alloc] initWithFrame: CGRectMake(32, 648, 310, 114)];
    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(40, 40, 40, 40)];
    btn.backgroundColor =[UIColor redColor];
    [btn addTarget:self action:@selector(pushBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)pushBtn:(UIButton *)sender{
    NSLog(@"Push");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//測試用的Btn方法
-(void)testViewHidden{
    if (_secView.hidden == YES) {
        _secView.hidden = NO;
    }else{
        _secView.hidden = YES;
    }
    
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

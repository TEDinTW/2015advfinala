//
//  TEDVC2.m
//  advappfinal
//
//  Created by cheng Yi Hsin on 2015/3/12.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "TEDVC2.h"
#import "ViewController.h"

@interface TEDVC2 ()
@property (strong, nonatomic) IBOutlet UIImageView *TEDXIBVIEW;
- (IBAction)gointo:(UIButton *)sender;

@end

@implementation TEDVC2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    }
-(void)animate{
    [UIView animateWithDuration:2.0 animations:^{
        self.TEDXIBVIEW.alpha=0;
    } completion:nil];
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

- (IBAction)gointo:(UIButton *)sender {
    
    
    ViewController *vc=[self.storyboard instantiateViewControllerWithIdentifier:@"HomeVC"];
    
//    [[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
    [self presentViewController:vc animated:YES completion:nil];
}
@end

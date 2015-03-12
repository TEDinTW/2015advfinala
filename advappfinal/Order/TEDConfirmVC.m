//
//  TEDConfirmVC.m
//  advappfinal
//
//  Created by cheng Yi Hsin on 2015/3/12.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "TEDConfirmVC.h"

@interface TEDConfirmVC ()
{

}
@end

@implementation TEDConfirmVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSLog(@"%d",[[self.order objectAtIndex:0]objectForKey:@"mProName"]);
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

//
//  TEDVC1.m
//  advappfinal
//
//  Created by ios on 2015/3/6.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "TEDVC1.h"
#import "APPGTool.h"
#import <CoreBluetooth/CoreBluetooth.h>

#define DOWNLOADTYPE 1
@interface TEDVC1 ()
{
    CBPeripheralManager *pMgr;
}
@end

@implementation TEDVC1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [APPGTool getJSONWithFileName:@"0_home1" andWithType:2];
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

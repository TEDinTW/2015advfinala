//
//  DetailVC.h
//  advappfinal
//
//  Created by Ke Hui-Ching on 2015/3/12.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailVC : UIViewController

//建立一個NSDictionary型態的detailItem物件
@property (weak, nonatomic) NSDictionary *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *content;


@end

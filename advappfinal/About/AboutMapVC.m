//
//  AboutMapVC.m
//  advappfinal
//
//  Created by ios on 2015/3/17.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "AboutMapVC.h"

@interface AboutMapVC ()
{
    double locationX;
    double locationY;
}

@end

@implementation AboutMapVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MKPointAnnotation *point;

    NSString *path = [[NSBundle mainBundle]pathForResource:@"1_about1" ofType:@"json"];
        
    NSData *data = [NSData dataWithContentsOfFile:path];
        
    NSArray *jsonObj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    for (NSDictionary *p in jsonObj)
    {
        NSNumber *number=(NSNumber *)[p objectForKey:@"locationX"];
        locationX = [number doubleValue];
        number=(NSNumber *)[p objectForKey:@"locationY"];
        locationY = [number doubleValue];
    }
    
    
    
    
    
    point = [[MKPointAnnotation alloc]init];
    point.coordinate = CLLocationCoordinate2DMake(locationX,locationY);
    point.title = @"水缸豆花";
    point.subtitle = @"台南市府連東路22巷1號";
    [self.myMap addAnnotation:point];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    self.myMap.centerCoordinate = CLLocationCoordinate2DMake(locationX,locationY);
    MKCoordinateRegion region = MKCoordinateRegionMake(CLLocationCoordinate2DMake(locationX,locationY), MKCoordinateSpanMake(0.01, 0.01));
    [self.myMap setRegion:region];
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

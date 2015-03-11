//
//  AboutHomeVC.m
//  advappfinal
//
//  Created by Lan on 2015/3/11.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "AboutHomeVC.h"

@interface AboutHomeVC ()
@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UILabel *labelTitle;
@property (strong, nonatomic) IBOutlet UILabel *labelTel;
@property (strong, nonatomic) IBOutlet UILabel *labelOpentime;

@property (strong, nonatomic) IBOutlet UILabel *labelAddress;

@end

@implementation AboutHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self loadJSON];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)loadJSON
{
    NSString *path = [[NSBundle mainBundle]pathForResource:@"1_about1" ofType:@"json"];
    
    NSData *data = [NSData dataWithContentsOfFile:path];
    
    NSArray *jsonObj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    for (NSDictionary *p in jsonObj){
        NSString *img = [p objectForKey:@"BGimg"];
        NSString *title = [p objectForKey:@"title"];
        NSString *tel = [p objectForKey:@"tel"];
        NSString *address = [p objectForKey:@"address"];
        NSString *opentime = [p objectForKey:@"opentime"];
        
        self.labelTitle.text = title;
        self.labelTel.text = tel;
        self.labelOpentime.text = opentime;
        self.labelAddress.text = address;
        
        self.imgView.image = [UIImage imageNamed:img];
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
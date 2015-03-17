//
//  AboutHomeVC.m
//  advappfinal
//
//  Created by Lan on 2015/3/11.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "AboutHomeVC.h"
#import "advappfinal-Swift.h"

@interface AboutHomeVC ()
{
    NSString *tell;
    MapVC *vc1;
}
@property (strong, nonatomic) IBOutlet UIImageView *imgView;
@property (strong, nonatomic) IBOutlet UILabel *labelTitle;

@property (strong, nonatomic) IBOutlet UILabel *labelOpentime;

@property (strong, nonatomic) IBOutlet UILabel *labelAddress;
@property (weak, nonatomic) IBOutlet UIButton *btnTel;
- (IBAction)btnTel:(UIButton *)sender;

@end

@implementation AboutHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   [self loadJSON];

    vc1=[[MapVC alloc]init];
//    [self.navigationController pushViewController:vc1 animated:YES];
//    [self presentViewController:vc1 animated:YES completion:nil];
//    [self.view addSubview:vc1.view];
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
        tell = [p objectForKey:@"tel"];
        NSString *address = [p objectForKey:@"address"];
        NSString *opentime = [p objectForKey:@"opentime"];
        
        self.labelTitle.text = title;
        
        self.labelOpentime.text = opentime;
        self.labelAddress.text = address;
        [self.btnTel setTitle:tell forState:UIControlStateNormal];
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

- (IBAction)btnTel:(UIButton *)sender {

    NSString *tel = [NSString stringWithFormat:@"tel://%@",tell];
    NSURL *url = [NSURL URLWithString:tel];
    NSLog(@"%@",url);
    [[UIApplication sharedApplication]openURL:url];
}

-(void)showMap{
//    MapVC1 *vc1=[[MapVC1 alloc]init];
    
//    MySwiftClass *swiftObject = [[MySwiftClass alloc] init];
//    [swiftObject swiftMethod];
}

@end

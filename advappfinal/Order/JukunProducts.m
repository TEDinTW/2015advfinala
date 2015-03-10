//
//  JukunProducts.m
//  advappfinal
//
//  Created by ios on 2015/3/10.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "JukunProducts.h"
@interface JukunProducts()
{
    NSMutableArray *products;
}
@end
@implementation JukunProducts
-(void)initWithJsonPath:(NSString *)jsonFile{

    
    NSString *path = [[NSBundle mainBundle] pathForResource:jsonFile ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSArray *jsonObj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    products=[[NSMutableArray alloc]initWithArray:jsonObj copyItems:YES];
}

-(NSArray *)getMainProductList{
    NSMutableArray *datas=[[NSMutableArray alloc]init];
    for (NSDictionary *p in products) {
        NSString *tmpStr=[p objectForKey:@"Product_Item"];
        [datas addObject:tmpStr];
    }
    return datas;
}

@end

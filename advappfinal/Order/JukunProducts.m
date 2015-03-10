//
//  JukunProducts.m
//  advappfinal
//
//  Created by ios on 2015/3/10.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "JukunProducts.h"
@interface JukunProducts()

@end
@implementation JukunProducts
-(id)initWithJsonPath:(NSString *)jsonFile{
    if (self=[super init]) {
        NSString *path = [[NSBundle mainBundle] pathForResource:jsonFile ofType:@"json"];
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSArray *jsonObj = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        self.products=[[NSMutableArray alloc]initWithArray:jsonObj copyItems:YES];
    }
    
    return self;
}

-(NSArray *)getMainProductList{
    NSMutableArray *datas=[[NSMutableArray alloc]init];
    for (NSDictionary *p in self.products) {
        NSString *tmpStr=[p objectForKey:@"Product_Item"];
        [datas addObject:tmpStr];
    }
    return datas;
}

@end

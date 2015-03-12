//
//  APPGenerealTool.m
//  advappfinal
//
//  Created by ios on 2015/3/6.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import "APPGTool.h"

@implementation APPGTool
+(NSString *)getWebServerURL{
    return @"http://www.lwin.com.tw/";
}

+(NSString *)getJSONWithFileName:(NSString *)fileName andWithType:(int)type{
    NSString *str;
    if (type==1) {
        NSString *filePath=[[NSBundle mainBundle]pathForResource:fileName ofType:@"json"];
        
        return str;
    }else if (type==2){ //read From network
    
        return str;
    }
    return str;
}
@end

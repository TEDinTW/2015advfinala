//
//  APPGenerealTool.h
//  advappfinal
//
//  Created by ios on 2015/3/6.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APPGTool : NSObject
+(NSString *)getWebServerURL;
+(NSString *)getJSONWithFileName:(NSString *)fileName andWithType:(int)type;

+(NSString *)getTEDFilePathWithFileName:(NSString *)fileName;
@end

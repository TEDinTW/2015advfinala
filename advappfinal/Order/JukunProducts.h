//
//  JukunProducts.h
//  advappfinal
//
//  Created by ios on 2015/3/10.
//  Copyright (c) 2015年 liangjason. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JukunProducts : NSObject
@property NSArray *products;
-(id)initWithJsonPath:(NSString *)jsonFile;
@end

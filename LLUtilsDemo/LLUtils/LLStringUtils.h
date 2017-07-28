//
//  StringUtils.h
//  NationzBle
//
//  Created by LL on 16/5/10.
//  Copyright © 2016年 nationz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LLStringUtils : NSObject

+ (NSData *)dataFromHex:(NSString *)hexString;

+ (NSString *)hexFromData:(NSData *)data;

@end

//
//  StringUtils.m
//  NationzBle
//
//  Created by LL on 16/5/10.
//  Copyright © 2016年 nationz. All rights reserved.
//

#import "LLStringUtils.h"

@implementation LLStringUtils

+ (NSData *)dataFromHex:(NSString *)hexString {
    
    if (hexString == nil || hexString.length %2 != 0 || hexString.length == 0) return nil;
    NSString *upper = [hexString uppercaseString];
    Byte bytes[hexString.length/2];
    for (int i = 0; i < hexString.length; i=i+2) {
        int high = [self unichar2int:[upper characterAtIndex:i]];
        int low = [self unichar2int:[upper characterAtIndex:i+1]];
        if (high == -1 || low == -1) return nil;
        bytes[i/2] = high * 16 + low;
    }
    return [NSData dataWithBytes:bytes length:hexString.length/2];
}

+ (int)unichar2int:(int)input {
    if (input >= '0' && input <= '9') {
        return input - 48;
    } else if (input >= 'A' && input <= 'F') {
        return input - 55;
    } else {
        return -1;
    }
}

+ (NSString *)hexFromData:(NSData *)data {
    
    if (data == nil) return nil;
    Byte *bytes = (Byte *)data.bytes;
    NSMutableString *str = [NSMutableString string];
    for (int i=0; i<data.length; i++) {
        [str appendFormat:@"%02x",bytes[i]];
    }
    return str;
}

@end

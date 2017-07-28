//
//  ViewController.m
//  LLUtilsDemo
//
//  Created by Liulu on 2017/7/28.
//  Copyright © 2017年 nationz. All rights reserved.
//

#import "ViewController.h"
#import "LLStringUtils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"data:%@",[LLStringUtils dataFromHex:@"2222"]);
    
}




@end

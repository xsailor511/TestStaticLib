//
//  ViewController.m
//  TestStaticLib
//
//  Created by richard on 2016/10/8.
//  Copyright © 2016年 richard. All rights reserved.
//

#import "ViewController.h"
#import "LogHelper.h"
#import "StringHelper.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LogHelper *helper = [[LogHelper alloc] init];
    [helper logi:@"someTAG" content:@"this is log test for static lib"];
    
    StringHelper *stringHelper = [[StringHelper alloc] init];
    
    NSString *str = [stringHelper joinString:@"hello" second:@"world"];
    [helper logi:@"StringHelper join" content:str];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

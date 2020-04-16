//
//  ViewController.m
//  OC and C++ 混编
//
//  Created by yangou on 2020/4/15.
//  Copyright © 2020 hello. All rights reserved.
//

#import "ViewController.h"
#import "MiddleJoinerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //系统初始化
    NSLog(@"系统的初始化输入");
    MiddleJoinerViewController *joinVC = [[MiddleJoinerViewController alloc]init];
    [joinVC textOCCallBackCppFunc];
    
}


@end

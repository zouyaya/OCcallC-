//
//  MiddleJoinerViewController.m
//  OC and C++ 混编
//
//  Created by yangou on 2020/4/15.
//  Copyright © 2020 hello. All rights reserved.
//

#import "MiddleJoinerViewController.h"
#import "testCppFile.hpp"
#include "testCppFile.hpp"


static TestCppFile* ptest = NULL; //声明静态变量指针，调用函数

@interface MiddleJoinerViewController ()

@end

@implementation MiddleJoinerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //https://blog.csdn.net/zzhzcl15/article/details/5940395
    
    //https://www.phpfans.net/ask/MTY5OTE4MA.html
    
    //https://blog.csdn.net/lmhuanying1012/article/details/78763595
    
    //https://zhidao.baidu.com/question/298632204.html
    
    // Do any additional setup after loading the view.
}


-(instancetype)init
{
    self = [super init];
    if (self) {
        
        if (!ptest) {
            
            ptest = new TestCppFile();
        }
        
    }
    
    return self;
    
}


-(void)textOCCallBackCppFunc
{
    if (ptest) {
        
        //c++调用函数的方式，
        ptest ->sum100();
        long int x  =  ptest ->jiecheng(5);
        NSLog(@"阶乘的值是 %ld",x);
        
    }
    
    
}


-(void)dealloc
{
    if (ptest) {
        
        delete ptest;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

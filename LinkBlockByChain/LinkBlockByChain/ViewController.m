//
//  ViewController.m
//  LinkBlockByChain
//
//  Created by AYuan on 16/5/22.
//  Copyright © 2016年 AYuan. All rights reserved.
//

#import "ViewController.h"
#import "CalculateMaker.h"
#import "NSObject+Calculate.h"

@interface ViewController ()

@end

@implementation ViewController

// 之前开发中比较习惯,把事情封装到一个方法中,
// 链式编程思想:把要做的事情封装到block,给外界提供一个返回这个Block的方法
// 链式编程思想方法特点:方法返回值必须是block,block参数:放需要操作的内容,block返回值:方法调用者

- (void)viewDidLoad {
    
    //add(1).add(2)
    
    //1.创建calculateMaker
    CalculateMaker *maker = [[CalculateMaker alloc] init];
    
    // 10 + 20 + 30 + 40
    // 链式编程思想: maker.add(10).add(20).add(30).add(40)
    //   int result = [maker.add(10).add(20).add(30).add(40) result];
    
    // 提供一个没参数的add方法,返回值block
    //   int reslut = [[[[[maker add:10] add:20] add:30] add:40] result];
    
    
    // block:使代码高聚合
    NSInteger result = [NSObject makeCalculate:^(CalculateMaker *maker) {
        // 把所有的计算代码封装到这里
        maker.add(10).add(20).add(30).add(40);
    }];
    
    NSLog(@"%ld",result);
    
}

@end

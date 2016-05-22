//
//  NSObject+Calculate.m
//  LinkBlockByChain
//
//  Created by AYuan on 16/5/22.
//  Copyright © 2016年 AYuan. All rights reserved.
//

#import "NSObject+Calculate.h"
#include "CalculateMaker.h"

@implementation NSObject (Calculate)

+ (NSInteger)makeCalculate:(void (^)(CalculateMaker *))block
{
    //创建calculateMaker
    CalculateMaker *maker = [[CalculateMaker alloc] init];
    
    //计算
    block(maker);
    
    return maker.result;

}

@end

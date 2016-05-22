//
//  CalculateMaker.m
//  LinkBlockByChain
//
//  Created by AYuan on 16/5/22.
//  Copyright © 2016年 AYuan. All rights reserved.
//

#import "CalculateMaker.h"

@implementation CalculateMaker

//- (instancetype)add:(NSInteger)num
//{
//    _result += num;
//    return self;
//}

- (CalculateMaker *(^)(int num))add
{
    return ^(int num){
        _result += num;
        
        return self;
    };
}

@end

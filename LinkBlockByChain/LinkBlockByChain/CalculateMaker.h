//
//  CalculateMaker.h
//  LinkBlockByChain
//
//  Created by AYuan on 16/5/22.
//  Copyright © 2016年 AYuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculateMaker : NSObject

/** 计算结果 */
@property (nonatomic, assign) NSInteger result;

//- (instancetype)add:(NSInteger)num;

- (CalculateMaker *(^)(int num))add;

@end

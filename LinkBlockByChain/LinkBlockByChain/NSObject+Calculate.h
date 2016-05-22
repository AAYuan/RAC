//
//  NSObject+Calculate.h
//  LinkBlockByChain
//
//  Created by AYuan on 16/5/22.
//  Copyright © 2016年 AYuan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class  CalculateMaker;

@interface NSObject (Calculate)

+ (NSInteger)makeCalculate:(void (^)(CalculateMaker *))block;

@end

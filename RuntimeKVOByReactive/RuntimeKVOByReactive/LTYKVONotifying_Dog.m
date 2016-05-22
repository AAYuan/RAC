//
//  LTYKVONotifying_Dog.m
//  RuntimeKVOByReactive
//
//  Created by AYuan on 16/5/22.
//  Copyright © 2016年 AYuan. All rights reserved.
//

#import "LTYKVONotifying_Dog.h"
#import <objc/runtime.h>

@implementation LTYKVONotifying_Dog

- (void)setWeight:(NSInteger)weight
{
    [super setWeight:weight];
    
    //获取关联属性
    id observer = objc_getAssociatedObject(self, @"observer");
    
    //添加观察者
    [observer observeValueForKeyPath:@"weight" ofObject:self change:nil context:nil];
}

@end

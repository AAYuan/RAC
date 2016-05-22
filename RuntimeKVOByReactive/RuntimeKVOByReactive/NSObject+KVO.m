//
//  NSObject+KVO.m
//  RuntimeKVOByReactive
//
//  Created by AYuan on 16/5/23.
//  Copyright © 2016年 AYuan. All rights reserved.
//

#import "NSObject+KVO.h"
#import <objc/runtime.h>
#import "LTYKVONotifying_Dog.h"

@implementation NSObject (KVO)

- (void)lty_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context
{
    //修改isa指针 指向notifying子类 外部看似是修改当前类名
    object_setClass(self, [LTYKVONotifying_Dog class]);
    
    //保存观察者对象 便于在子类setter中监听
    //分类中使用runtime动态添加属性
    objc_setAssociatedObject(self, @"observer", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end

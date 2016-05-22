//
//  NSObject+KVO.h
//  RuntimeKVOByReactive
//
//  Created by AYuan on 16/5/23.
//  Copyright © 2016年 AYuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (KVO)

- (void)lty_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context;


@end

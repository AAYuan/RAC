//
//  ViewController.m
//  RuntimeKVOByReactive
//
//  Created by AYuan on 16/5/22.
//  Copyright © 2016年 AYuan. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"
#import "NSObject+KVO.h"

@interface ViewController ()

/** dog对象 */
@property (nonatomic, strong) Dog *dog;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    Dog *d = [[Dog alloc] init];
    _dog = d;
    
    [d lty_addObserver:self forKeyPath:@"weight" options:NSKeyValueObservingOptionNew context:nil];
    

    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    NSLog(@"%ld",_dog.weight);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    _dog.weight++;
//    NSLog(@"%ld",self.dog.weight);
    
}

@end

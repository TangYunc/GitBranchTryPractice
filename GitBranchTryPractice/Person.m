//
//  Person.m
//  GitBranchTryPractice
//
//  Created by tangyunchuan on 2018/8/7.
//  Copyright © 2018年 tangyunchuan. All rights reserved.
//

#import "Person.h"

@implementation Person
- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"我是%@",NSStringFromClass([super class]));
    }
    return self;
}

- (void)teach{
    NSLog(@"教学生");
}
@end

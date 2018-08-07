//
//  Student.m
//  GitBranchTryPractice
//
//  Created by tangyunchuan on 2018/8/7.
//  Copyright © 2018年 tangyunchuan. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"我是%@", NSStringFromClass([self class]));
    }
    return self;
}

- (void)study{
    NSLog(@"跟老师学习");
}
@end

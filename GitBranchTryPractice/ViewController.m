//
//  ViewController.m
//  GitBranchTryPractice
//
//  Created by tangyunchuan on 2018/8/7.
//  Copyright © 2018年 tangyunchuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self demo];
    
}
- (void)demo{
    // Do any additional setup after loading the view, typically from a nib.
    //    NSArray *roleArray = [NSArray arrayWithObjects:@"",@"康复人员",@"禁毒办",@"乡镇街道",@"司法部门",@"卫生部门",@"检测机构", @"康复家属",@"",@"",@"网格成员",@"衔接团队",@"巡诊医生",@"未知",@"未知",@"未知",nil];
    //    NSLog(@"%lu",(unsigned long)roleArray.count);
    
    NSDictionary *filterDic = @{@"检测状态": @"请选择检测状态",
                                @"身份证号": @"请输入身份证号码",
                                @"姓名": @"请输入姓名",
                                @"开始时间": @"请选择开始时间",
                                @"结束时间": @"请选择结束时间"};
    
    NSDictionary *filterDic2 = @{@"1": @{@"检测状态": @"请选择检测状态"},
                                 @"2": @{@"身份证号": @"请输入身份证号码"},
                                 @"3": @{@"姓名": @"请输入姓名",},
                                 @"4": @{@"开始时间": @"请选择开始时间"},
                                 @"5": @{@"结束时间": @"请选择结束时间"}};
    NSArray *keyArr = [self getNeedSignStrFrom:filterDic2 isGetKey:YES];
    NSArray *valueArr = [self getNeedSignStrFrom:filterDic2 isGetKey:NO];
    NSLog(@"%@---%@", keyArr, valueArr);
}

/**
 遍历字典顺序获取key和value值的数组
 
 @param obj 要遍历的字典
 @param isGetKey 获取的数组是否是key值,YES为key,NO 为value
 @return 返回获取的数组
 */
- (NSArray *)getNeedSignStrFrom:(id)obj isGetKey:(BOOL)isGetKey{
    NSDictionary *dict = obj;
    NSArray *keysArray = [dict allKeys];//获取所有键存到数组
    NSArray *sortedArray = [keysArray sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2 options:NSNumericSearch];//由于allKeys返回的是无序数组，这里我们要排列它们的顺序
    }];
    NSMutableArray *mArr = [NSMutableArray array];
    for (NSString *key in sortedArray) {
        NSDictionary *valueDic = [dict objectForKey: key];
        if (isGetKey) {
            //获取key
            for (NSString *tempStr in valueDic.allKeys) {
                [mArr addObject:tempStr];
            }
        }else{
            //获取value
            for (NSString *tempStr in valueDic.allValues) {
                [mArr addObject:tempStr];
            }
        }
        
    }//遍历整理后的数组，通过objectForKey来获取相应的Value值
    return [mArr copy];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

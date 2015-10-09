//
//  ViewController.m
//  YHBaseFoundationTest
//
//  Created by user on 15/9/7.
//  Copyright (c) 2015年 jaki.zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel * label  =[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 100, 30)];
    label.font = [UIFont fontWithName:@"yuweij" size:17];
    label.text = @"中国象棋";
    [self.view addSubview:label];
    NSMutableDictionary * rootDic = [[NSMutableDictionary alloc]init];
    for (NSString * name in [UIFont familyNames]) {
        NSMutableArray * arr = [[NSMutableArray alloc]init];
        for (NSString * fo in [UIFont fontNamesForFamilyName:name]) {
            [arr addObject:fo];
        }
        [rootDic setObject:arr forKey:name];
    }
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *plistPath1 = [paths objectAtIndex:0];
    
    //得到完整的文件名
    NSString *filename=[plistPath1 stringByAppendingPathComponent:@"font.plist"];
    [rootDic  writeToFile:filename atomically:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

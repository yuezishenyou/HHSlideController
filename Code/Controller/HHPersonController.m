//
//  HHPersonController.m
//  HHSlide
//
//  Created by maoziyue on 2017/11/9.
//  Copyright © 2017年 maoziyue. All rights reserved.
//

#import "HHPersonController.h"
#import "HHTestController.h"

@interface HHPersonController ()

@end

@implementation HHPersonController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initSubViews];
    
}

- (void)initSubViews
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = CGRectMake(20, 200, 100, 40);
    
    btn.backgroundColor = [UIColor yellowColor];
    
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    
    [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    
}


- (void)btnAction
{
    NSLog(@"---push----");
    
    HHTestController *vc = [[HHTestController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
    
    
}




- (void)dealloc
{
    NSLog(@"----person释放------");
}


@end

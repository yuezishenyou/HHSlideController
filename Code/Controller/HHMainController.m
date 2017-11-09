//
//  HHMainController.m
//  HHSlide
//
//  Created by maoziyue on 2017/11/9.
//  Copyright © 2017年 maoziyue. All rights reserved.
//

#import "HHMainController.h"
#import "HHAnimateController.h"
#import "HHOhterController.h"


#define FBStatusBarH ([UIApplication sharedApplication].statusBarFrame.size.height)
#define FBNavigationBarH (FBStatusBarH + 44)


@interface HHMainController ()<UIGestureRecognizerDelegate>

/** tapGestureRec */
@property (nonatomic, weak) UITapGestureRecognizer *tapGestureRec;
/** panGestureRec */
@property (nonatomic, strong) UIPanGestureRecognizer *panGestureRec;

@property (nonatomic, assign) BOOL hasClick;

@end

@implementation HHMainController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}


- (void)viewDidLoad
{
    [super viewDidLoad];

    //git地址
    //https://github.com/jiangyongjian/JYJSlideMenuController.git
    
    [self setupNav];
    
}



- (void)msgClick
{
    HHOhterController *vc = [[HHOhterController alloc] init];
    vc.view.backgroundColor = [UIColor greenColor];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)profileCenter
{
    // 防止重复点击
    if (self.hasClick) return;
    self.hasClick = YES;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.hasClick = NO;
    });
    
    // 展示个人中心
    HHAnimateController *vc = [[HHAnimateController alloc] init];
    vc.view.backgroundColor = [UIColor clearColor];
    [self addChildViewController:vc];
    [self.view addSubview:vc.view];
}
















@end

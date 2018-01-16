//
//  TViewController.m
//  NavgationAlphaDemo
//
//  Created by lin on 2018/1/16.
//  Copyright © 2018年 YangLin. All rights reserved.
//

#import "TViewController.h"

@interface TViewController ()

@end

@implementation TViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"导航栏透明";
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self navAlpha:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)navAlpha:(double)alpha{
    UIView * barBackground = self.navigationController.navigationBar.subviews.firstObject;
    if (@available(iOS 11.0, *))
    {
        [barBackground.subviews setValue:@(alpha) forKeyPath:@"alpha"];
    } else {
        barBackground.alpha = alpha;
    }
}
- (IBAction)change:(UISlider *)sender {
    [self navAlpha:sender.value];
}

@end

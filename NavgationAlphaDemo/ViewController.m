//
//  ViewController.m
//  NavgationAlphaDemo
//
//  Created by lin on 2018/1/16.
//  Copyright © 2018年 YangLin. All rights reserved.
//

#import "ViewController.h"
#import "TViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)click:(id)sender {
    TViewController * vc = [[TViewController alloc] init];
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
}

@end

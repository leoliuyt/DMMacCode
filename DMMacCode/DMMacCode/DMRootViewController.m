//
//  DMRootViewController.m
//  DMMacCode
//
//  Created by lbq on 2018/4/13.
//  Copyright © 2018年 lbq. All rights reserved.
//

#import "DMRootViewController.h"

@interface DMRootViewController ()

@end

@implementation DMRootViewController

//没有使用Nib的情况下，需要在loadView中加载视图设置，否则不会有视图显示
- (void)loadView
{
    self.view = [[NSView alloc] initWithFrame:CGRectMake(0, 0, 400, 300)];
    self.view.wantsLayer = YES;
    self.view.layer.backgroundColor = [NSColor orangeColor].CGColor;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

@end

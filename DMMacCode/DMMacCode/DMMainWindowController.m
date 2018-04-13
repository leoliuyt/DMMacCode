//
//  DMMainWindowController.m
//  DMMacCode
//
//  Created by lbq on 2018/4/13.
//  Copyright © 2018年 lbq. All rights reserved.
//

#import "DMMainWindowController.h"
#import "DMRootViewController.h"

@interface DMMainWindowController ()

@end

@implementation DMMainWindowController

- (instancetype)init
{
    DMRootViewController *vc = [[DMRootViewController alloc] init];
    NSWindow *window = [NSWindow windowWithContentViewController:vc];
    [window setTitle:@"主Window"];
    return [super initWithWindow:window];
}

- (void)loadWindow
{
    NSLog(@"%s",__func__);
}

- (void)windowWillLoad
{
    [super windowWillLoad];
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end

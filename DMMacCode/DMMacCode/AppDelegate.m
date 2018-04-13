//
//  AppDelegate.m
//  DMMacCode
//
//  Created by lbq on 2018/4/13.
//  Copyright © 2018年 lbq. All rights reserved.
//

#import "AppDelegate.h"
#import "DMRootViewController.h"
#import "DMMainWindowController.h"
#import "DMMainMenu.h"

@interface AppDelegate ()<NSWindowDelegate>

@property (nonatomic, strong) NSWindow *window;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    DMMainWindowController *mainWindowController = [[DMMainWindowController alloc] init];
    [mainWindowController showWindow:self];
    
    DMMainMenu *mainMenu = [[DMMainMenu alloc] init];
    [NSApplication sharedApplication].mainMenu = mainMenu;
}

/*
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    //创建Window的两种方式
    DMRootViewController *vc = [[DMRootViewController alloc] init];
    //创建Window方式一：
//    self.window = [NSWindow windowWithContentViewController:vc];
    
    //创建Window方式二：
    self.window = [[NSWindow alloc] initWithContentRect:CGRectMake(0,0,800,600)
                                              styleMask:NSWindowStyleMaskTitled|NSWindowStyleMaskMiniaturizable|NSWindowStyleMaskResizable|NSWindowStyleMaskClosable
                                                backing:NSBackingStoreRetained
                                                  defer:NO];
    self.window.contentViewController = vc;
  
    
    //window 显示出来也有两种方式：
    
    [self.window center];
    //window显示方式一：
//    [self.window makeKeyAndOrderFront:nil];
    //window显示方式二：
    [self.window makeKeyWindow];
    //将window与APP绑定，如果不绑定，无法显示Window。
    [NSApp beginModalSessionForWindow:self.window];
    
    self.window.delegate = self;
}
 */


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)windowShouldClose:(NSWindow *)sender
{
    [NSApp terminate:nil];
    return YES;
}

@end

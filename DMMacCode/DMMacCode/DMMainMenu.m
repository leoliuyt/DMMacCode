//
//  DMMainMenu.m
//  DMMacCode
//
//  Created by lbq on 2018/4/13.
//  Copyright © 2018年 lbq. All rights reserved.
//

#import "DMMainMenu.h"

@implementation DMMainMenu

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        // this title will be ignore too
        NSMenuItem * appItem = [[NSMenuItem alloc] initWithTitle:@"App Item" action:Nil keyEquivalent:@""];
        [self addItem:appItem];
        // this title will be ignore too
        NSMenu *appMenu = [[NSMenu alloc] initWithTitle:@"application"];
        
        NSMenuItem *aboutItem  = [[NSMenuItem alloc] initWithTitle:@"关于我们" action:@selector(aboutUs) keyEquivalent:@"about"];
        aboutItem.enabled = YES;
        [appMenu addItem:aboutItem];
        [appMenu addItem:[NSMenuItem separatorItem]];
        NSMenuItem *quitItem = [[NSMenuItem alloc] initWithTitle:@"退出" action:@selector(quit) keyEquivalent:@"quit"];
        [appMenu addItem:quitItem];
        
        [self setSubmenu:appMenu forItem:appItem];
        
        // this title will be ignore too
        NSMenuItem * windowItem = [[NSMenuItem alloc] initWithTitle:@"Window Item" action:Nil keyEquivalent:@""];
        [self addItem:windowItem];
        NSMenu *windowMenu = [[NSMenu alloc] initWithTitle:@"window"];
        [windowMenu addItemWithTitle:@"hide me" action:Nil keyEquivalent:@""];
        [windowMenu addItemWithTitle:@"hide others" action:Nil keyEquivalent:@""];
        [self setSubmenu:windowMenu forItem:windowItem];
        
    }
    return self;
}

@end

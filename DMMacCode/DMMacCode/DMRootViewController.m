//
//  DMRootViewController.m
//  DMMacCode
//
//  Created by lbq on 2018/4/13.
//  Copyright © 2018年 lbq. All rights reserved.
//

#import "DMRootViewController.h"
#import <Masonry/Masonry.h>

@interface DMRootViewController ()

@end

@implementation DMRootViewController

//没有使用Nib的情况下，需要在loadView中加载视图设置，否则不会有视图显示
- (void)loadView
{
    NSLog(@"size=%@",NSStringFromRect([NSScreen mainScreen].frame));
    
    self.view = [[NSView alloc] initWithFrame:CGRectMake(0, 0, 800, 600)];//1280*800
    self.view.wantsLayer = YES;
    self.view.layer.backgroundColor = [NSColor orangeColor].CGColor;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%s",__FUNCTION__);
    [self coreControl];
}

- (void)coreControl
{
    //    NSButtonTypeMomentaryLight    = 0,
    //    NSButtonTypePushOnPushOff     = 1,
    //    NSButtonTypeToggle            = 2,
    //    NSButtonTypeSwitch            = 3,
    //    NSButtonTypeRadio             = 4,
    //    NSButtonTypeMomentaryChange   = 5,
    //    NSButtonTypeOnOff             = 6,
    //    NSButtonTypeMomentaryPushIn   = 7,
    //    NSButtonTypeAccelerator NS_ENUM_AVAILABLE_MAC(10_10_3) = 8,
    //    NSButtonTypeMultiLevelAccelerator NS_ENUM_AVAILABLE_MAC(10_10_3) = 9,
//    NSPopUpButton *popUpBtn = [[NSPopUpButton alloc] init];
//    [popUpBtn setButtonType:NSButtonTypePushOnPushOff];
    
    //Push Button
//    NSButtonTypeMomentaryLight
//    NSButtonTypeMomentaryPushIn
//    NSButtonTypeMomentaryChange
    
    //Sticky Button
//    NSButtonTypePushOnPushOff
//    NSButtonTypeToggle
    
    //Radio Buttons and Checkboxes
//    NSButtonTypeSwitch
//    NSButtonTypeRadio

    NSButton *momentaryPushInBtn = [[NSButton alloc] init];
    [momentaryPushInBtn setButtonType:NSButtonTypePushOnPushOff];
    [momentaryPushInBtn setTitle:@"PushIn-NSBezelStyleTexturedRounded"];
    [momentaryPushInBtn setAlternateTitle:@"NSButtonTypeMomentaryChange-NSBezelStyleTexturedRounded"];
//    [momentaryPushInBtn setTitle:@"PushIn-NSBezelStyleRounded"];
//    [momentaryPushInBtn setTitle:@"PushIn-NSBezelStyleRoundRect"];
//    [momentaryPushInBtn setTitle:@"PushIn-NSBezelStyleHelpButton"];
//    [momentaryPushInBtn setTitle:@"PushIn-NSBezelStyleInline"];
//    [momentaryPushInBtn setTitle:@"PushIn-Gradient"];
    
//    NSBezelStyleRounded           = 1,
//    NSBezelStyleRegularSquare     = 2,
//    NSBezelStyleDisclosure        = 5,
//    NSBezelStyleShadowlessSquare  = 6,
//    NSBezelStyleCircular          = 7,
//    NSBezelStyleTexturedSquare    = 8,
//    NSBezelStyleHelpButton        = 9,
//    NSBezelStyleSmallSquare       = 10,
//    NSBezelStyleTexturedRounded   = 11,
//    NSBezelStyleRoundRect         = 12,
//    NSBezelStyleRecessed          = 13,
//    NSBezelStyleRoundedDisclosure = 14,
//    NSBezelStyleInline NS_ENUM_AVAILABLE_MAC(10_7) = 15,
    [momentaryPushInBtn setBezelStyle:NSBezelStyleTexturedRounded];
    [self.view addSubview:momentaryPushInBtn];
    
    [momentaryPushInBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(self.view).offset(10.);
    }];
    
    momentaryPushInBtn.target = self;
    momentaryPushInBtn.action = @selector(clicked:);
    
  
    
    [momentaryPushInBtn addObserver:self forKeyPath:@"state" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    
    momentaryPushInBtn.state = NSControlStateValueOn;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSInteger value = [change[NSKeyValueChangeNewKey] integerValue];
    if (value == 0) {
//         [aBtn setTitle:@"NSButtonTypeMomentaryChange-NSControlStateValueOff"];
        NSLog(@"%tu",value);
    } else if(value == 1) {
//         [aBtn setTitle:@"PushIn-NSControlStateValueOn"];
        NSLog(@"%tu",value);
    }
}


- (void)clicked:(NSButton *)aBtn
{
    aBtn.state = aBtn.state;

}

@end

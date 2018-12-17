//
//  IWTabBar.m
//  IWUserMainModule_Example
//
//  Created by maso on 2018/11/30.
//  Copyright © 2018年 Hanssea. All rights reserved.
//

#import "IWTabBar.h"
#import "IWCategoryHeader.h"


@implementation IWTabBar

// 这里可以做一些初始化设置
-(instancetype)initWithFrame:(CGRect)frame {
    if(self = [super initWithFrame:frame]) {
        [self setUpInit];
    }
    return self;
}


- (void)setUpInit {
    
    // 设置样式, 去除tabbar上面的黑线
    self.barStyle = UIBarStyleDefault;
    
    // 设置tabbar 背景图片

    [[UITabBar appearance]setBackgroundImage:[[UIImage alloc]init]];
    
    [[UITabBar appearance]setBackgroundColor:[UIColor whiteColor]];

    [UITabBar appearance].translucent =NO;
    
   
}


-(void)layoutSubviews {
    [super layoutSubviews];
    
    NSInteger count = self.items.count;
    
    if (IWMoreIphoneX) {
        for (UITabBarItem *item in self.items) {
            [item setTitlePositionAdjustment:UIOffsetMake(0, -15)];
        }
    }
    
    //1. 遍历所有的子控件
    NSArray *subViews = self.subviews;

    // 确定单个控件的大小
    CGFloat btnW = self.mj_w / count;
    CGFloat btnH = self.mj_h;
    CGFloat btnY = 0;

    NSInteger index = 0;

    for (UIView *subView in subViews) {
        if ([subView isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            CGFloat btnX = index * btnW;
            subView.frame = CGRectMake(btnX, btnY, btnW, btnH);
            index ++;
        }
    }
}

@end

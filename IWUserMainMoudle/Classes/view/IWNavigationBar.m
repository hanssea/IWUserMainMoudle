//
//  IWNavigationBar.m
//  IWUserMainModule_Example
//
//  Created by maso on 2018/11/30.
//  Copyright © 2018年 Hanssea. All rights reserved.
//

#import "IWNavigationBar.h"

@implementation IWNavigationBar

/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setGlobalBackGroundImage: (UIImage *)globalImg {
    
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:NSClassFromString(@"IWNavCtrl"), nil];
    [navBar setBackgroundImage:globalImg forBarMetrics:UIBarMetricsDefault];
    

}
+ (void)setGlobalBackGroundColor:(UIColor *)globalColor{
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:NSClassFromString(@"IWNavCtrl"), nil];
    navBar.tintColor = [UIColor blackColor];
    navBar.translucent = NO;
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor clearColor]}forState:UIControlStateNormal];
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor clearColor]}forState:UIControlStateHighlighted];

}
/**
 *  设置全局导航栏标题颜色
 *
 *  @param globalTextColor 全局导航栏标题颜色
 */
+ (void)setGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize  {
    
    if (globalTextColor == nil) {
        return;
    }
    if (fontSize < 6 || fontSize > 40) {
        fontSize = 16;
    }
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:NSClassFromString(@"IWNavCtrl"), nil];
    // 设置导航栏颜色
    NSDictionary *titleDic = @{
                               NSForegroundColorAttributeName: globalTextColor,
                               NSFontAttributeName: [UIFont systemFontOfSize:fontSize]
                               };
    [navBar setTitleTextAttributes:titleDic];
}

@end

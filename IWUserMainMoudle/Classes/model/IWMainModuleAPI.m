//
//  IWMainModuleAPI.m
//  IWUserMainModule_Example
//
//  Created by maso on 2018/11/30.
//  Copyright © 2018年 Hanssea. All rights reserved.
//

#import "IWMainModuleAPI.h"
#import "IWTabBarCtrl.h"
#import "IWNavigationBar.h"
#import "IWTabBar.h"
@implementation IWMainModuleAPI
+ (IWTabBarCtrl *)rootTabBarCcontroller {
    return [IWTabBarCtrl shareInstance];
}
+ (void)addChildsVC:(UIViewController *)vc normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName title:(NSString *)title isRequiredNav:(BOOL)isRequired navVC:(UINavigationController *)navVC
{
    [[IWTabBarCtrl shareInstance]addChildVC:vc normalImageName:normalImageName selectedImageName:selectedImageName title:title isRequiredNavController:isRequired IWNav:navVC];
}

/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setNavBarGlobalBackGroundImage: (UIImage *)globalImg {
    [IWNavigationBar setGlobalBackGroundImage:globalImg];
}
+ (void)setGlobalBackGroundColor:(UIColor *)globalColor {
    [IWNavigationBar setGlobalBackGroundColor:globalColor];
}
/**
 *  设置全局导航栏标题颜色, 和文字大小
 *
 *  @param globalTextColor 全局导航栏标题颜色
 *  @param fontSize        全局导航栏文字大小
 */
+ (void)setNavBarGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize {
    
    [IWNavigationBar setGlobalTextColor:globalTextColor andFontSize:fontSize];
    
}
/**
 
 设置TabBar标题颜色, 和文字大小
 @param TextColor 栏标题颜色
 @param selectColor 选中颜色颜色
 @param fontSize 文字大小
 */
+ (void)setTabBarTextColor:(UIColor *)textColor  selectColor:(UIColor *)selectColor fontSize: (CGFloat)fontSize{
    [IWTabBarCtrl setTabBarTextColor:textColor selectColor:selectColor andFontSize:fontSize];
}
+ (void)setBageValueforTabBar:(NSInteger)index bageValue:(NSInteger)bageValue{
    [[IWTabBarCtrl shareInstance] setBageValueforTabBar:index bageValue:bageValue];
}

@end

//
//  IWMainModuleAPI.h
//  IWUserMainModule_Example
//
//  Created by maso on 2018/11/30.
//  Copyright © 2018年 Hanssea. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface IWMainModuleAPI : NSObject<UIApplicationDelegate>

/**
 获取根控制器
 
 @return rootTabBarCcontroller
 */
+ (UITabBarController *)rootTabBarCcontroller;

/**
 添加子控制器
 
 @param vc                子控制器
 @param normalImageName   普通状态下图片
 @param selectedImageName 选中图片
 @param title 文字
 @param isRequired        是否需要包装导航控制器
 */
+ (void)addChildVC: (UIViewController *)vc normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName title:(NSString *)title isRequiredNavController:(BOOL)isRequired;

/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setNavBarGlobalBackGroundImage: (UIImage *)globalImg;

+ (void)setGlobalBackGroundColor:(UIColor *)globalColor;
/**
 *  设置全局导航栏标题颜色, 和文字大小
 *
 *  @param globalTextColor 全局导航栏标题颜色
 *  @param fontSize        全局导航栏文字大小
 */
+ (void)setNavBarGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize;


/**
 
 设置TabBar标题颜色, 和文字大小
 @param textColor 栏标题颜色
 @param selectColor 选中颜色颜色
 @param fontSize 文字大小
 */
+ (void)setTabBarTextColor:(UIColor *)textColor  selectColor:(UIColor *)selectColor fontSize: (CGFloat)fontSize;

/**
 设置某个TabBar的小数字提示

 @param index 哪个TabBar
 @param bageValue 数字
 */
+ (void)setBageValueforTabBar:(NSInteger)index bageValue:(NSInteger)bageValue;


@end

NS_ASSUME_NONNULL_END

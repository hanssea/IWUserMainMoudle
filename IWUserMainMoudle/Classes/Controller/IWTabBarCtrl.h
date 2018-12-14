//
//  IWTabBarCtrl.h
//  IWUserMainModule_Example
//
//  Created by maso on 2018/11/30.
//  Copyright © 2018年 Hanssea. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IWTabBarCtrl : UITabBarController
/**
 获取单例对象
 
 @return TabBarController
 */
+ (instancetype)shareInstance;


/**
 添加子控制器的block
 
 @param addVCBlock 添加代码块
 
 @return TabBarController
 */
+ (instancetype)tabBarControllerWithAddChildVCsBlock: (void(^)(IWTabBarCtrl *tabBarC))addVCBlock;


/**
 添加子控制器
 
 @param vc                子控制器
 @param normalImageName   普通状态下图片
 @param selectedImageName 选中图片
 @param title 文字
 @param isRequired        是否需要包装导航控制器
 */
- (void)addChildVC: (UIViewController *)vc normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName title:(NSString *)title isRequiredNavController:(BOOL)isRequired;


/**
 返回指定UITabBarItem

 @param index 索引
 @return UITabBarItem
 */
+ (UITabBarItem *)tabBarItem:(NSInteger)index;


/**
 
 设置TabBar标题颜色, 和文字大小
 @param TextColor 栏标题颜色
 @param fontSize 文字大小
 */
+ (void)setTabBarTextColor:(UIColor *)TextColor selectColor:(UIColor *)selectColor andFontSize:(CGFloat)fontSize;

- (void)setBageValueforTabBar:(NSInteger)index bageValue:(NSInteger)bageValue;

@end

NS_ASSUME_NONNULL_END

//
//  IWNavigationBar.h
//  IWUserMainModule_Example
//
//  Created by maso on 2018/11/30.
//  Copyright © 2018年 Hanssea. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IWNavigationBar : UINavigationBar
/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setGlobalBackGroundImage: (UIImage *)globalImg;

+ (void)setGlobalBackGroundColor: (UIColor *)globalColor;
/**
 *  设置全局导航栏标题颜色, 和文字大小
 *
 *  @param globalTextColor 全局导航栏标题颜色
 *  @param fontSize        全局导航栏文字大小
 */
+ (void)setGlobalTextColor: (UIColor *)globalTextColor andFontSize: (CGFloat)fontSize;
@end

NS_ASSUME_NONNULL_END

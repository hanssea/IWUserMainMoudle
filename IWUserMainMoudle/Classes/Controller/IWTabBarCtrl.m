//
//  IWTabBarCtrl.m
//  IWUserMainModule_Example
//
//  Created by maso on 2018/11/30.
//  Copyright © 2018年 Hanssea. All rights reserved.
//

#import "IWTabBarCtrl.h"
#import "IWTabBar.h"
#import "IWCategoryHeader.h"

@interface IWTabBarCtrl ()
@property (nonatomic,strong )IWTabBar *iwtabBar;
@end

@implementation IWTabBarCtrl

+ (instancetype)shareInstance {
    
    static IWTabBarCtrl *tabbarC;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tabbarC = [[IWTabBarCtrl alloc] init];
    });
    return tabbarC;
}

+ (instancetype)tabBarControllerWithAddChildVCsBlock: (void(^)(IWTabBarCtrl *tabBarC))addVCBlock {
    
    IWTabBarCtrl *tabbarVC = [[IWTabBarCtrl alloc] init];
    if (addVCBlock) {
        addVCBlock(tabbarVC);
    }
    return tabbarVC;
}


-(void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置tabbar
    [self setUpTabbar];
    
}

- (void)setUpTabbar {
    [self setValue:self.iwtabBar forKey:@"tabBar"];
}

/**
 添加子控制器
 
 @param vc                子控制器
 @param normalImageName   普通状态下图片
 @param selectedImageName 选中图片
 @param title 文字
 @param isRequired        是否需要包装导航控制器
 @param IWNav        导航控制器
 */
- (void)addChildVC: (UIViewController *)vc normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName title:(NSString *)title isRequiredNavController:(BOOL)isRequired IWNav:(UINavigationController *)IWNav{
    
    if (isRequired) {
        UINavigationController *nav=[IWNav initWithRootViewController:vc];
        nav.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:[[UIImage imageNamed:normalImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        [self addChildViewController:nav];
        
    }else {
        [self addChildViewController:vc];
    }
    
}
- (IWTabBar *)iwtabBar {
    if (!_iwtabBar) {
        // 创建wj_tabBar
        _iwtabBar = [[IWTabBar alloc]init];
        // 设置frame
        _iwtabBar.frame = self.tabBar.bounds;
    }
    return _iwtabBar;
}
+ (void)setTabBarTextColor:(UIColor *)TextColor selectColor:(UIColor *)selectColor andFontSize:(CGFloat)fontSize{
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:TextColor} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:selectColor} forState:UIControlStateSelected];
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSParagraphStyleAttributeName:[UIFont systemFontOfSize:fontSize]} forState:UIControlStateNormal];
}

- (void)setBageValueforTabBar:(NSInteger)index bageValue:(NSInteger)bageValue
{
    UITabBarItem *TabBarItem=self.tabBar.items[index];
    [TabBarItem setBadgeValue:[NSString stringWithFormat:@"%ld",bageValue]];
}
@end

//
//  IWAppDelegate.m
//  IWUserMainMoudle
//
//  Created by Hanssea on 12/14/2018.
//  Copyright (c) 2018 Hanssea. All rights reserved.
//

#import "IWAppDelegate.h"
#import "IWMainModuleAPI.h"
#import "IWViewController.h"
#import "IW2.h"
@implementation IWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
            [IWMainModuleAPI addChildVC:[IWViewController new] normalImageName:@"homepage" selectedImageName:@"homepage_select" title:@"首页" isRequiredNavController:YES];
            [IWMainModuleAPI addChildVC:[IW2 new] normalImageName:@"orderlist" selectedImageName:@"orderlist_select" title:@"正在进行" isRequiredNavController:YES];
            [IWMainModuleAPI setGlobalBackGroundColor:[UIColor blackColor]];
    
    self.window.rootViewController =[IWMainModuleAPI rootTabBarCcontroller];
    
    
//    self.gestureBaseView = [[BBGestureBaseView alloc] initWithFrame:CGRectMake(0, 0, appDelegate.window.frame.size.width, appDelegate.window.frame.size.height)];
//    [self.window insertSubview:self.gestureBaseView belowSubview:self.window.rootViewController.view];
//    self.gestureBaseView.hidden = YES;
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

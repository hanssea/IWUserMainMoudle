//
//  IWViewController.m
//  IWUserMainMoudle
//
//  Created by Hanssea on 12/14/2018.
//  Copyright (c) 2018 Hanssea. All rights reserved.
//

#import "IWViewController.h"
#import "IW3.h"
#import "IWMainModuleAPI.h"
@interface IWViewController ()

@end

@implementation IWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor lightGrayColor];
    
    
    UIButton *userClick=[UIButton buttonWithType:UIButtonTypeCustom];
    userClick.frame=CGRectMake(100, 100, 100, 50);
    [userClick setTitle:@"nextPage" forState:UIControlStateNormal];
    [userClick addTarget:self action:@selector(userClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:userClick];
    
    [IWMainModuleAPI setBageValueforTabBar:0 bageValue:99];
    
}
- (void)userClick{
    [self.navigationController pushViewController:[IW3 new] animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

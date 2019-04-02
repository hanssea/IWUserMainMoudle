# IWUserMainMoudle

[![CI Status](https://img.shields.io/travis/Hanssea/IWUserMainMoudle.svg?style=flat)](https://travis-ci.org/Hanssea/IWUserMainMoudle)
[![Version](https://img.shields.io/cocoapods/v/IWUserMainMoudle.svg?style=flat)](https://cocoapods.org/pods/IWUserMainMoudle)
[![License](https://img.shields.io/cocoapods/l/IWUserMainMoudle.svg?style=flat)](https://cocoapods.org/pods/IWUserMainMoudle)
[![Platform](https://img.shields.io/cocoapods/p/IWUserMainMoudle.svg?style=flat)](https://cocoapods.org/pods/IWUserMainMoudle)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


## 如何安装

IWUserMainMoudle is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'IWUserMainMoudle'
```
## 如何使用到项目
```
1、导入头文件 #import "IWMainModuleAPI.h"
2、组件化配置

  [IWMainModuleAPI addChildsVC:[GoodsViewController new] normalImageName:@"ic_application_2" selectedImageName:@"ic_application_1" title:@"货源大厅" isRequiredNav:YES navVC:[MainNavViewController alloc]];
  
  [IWMainModuleAPI addChildsVC:[InfoViewController new] normalImageName:@"ic_own_2" selectedImageName:@"ic_own_1" title:@"我" isRequiredNav:YES navVC:[MainNavViewController alloc]];
  
   appDelegate.window.rootViewController =[IWMainModuleAPI rootTabBarCcontroller];
```


## Author

JinYang, jianye0209@yeah.net

## License

IWUserMainMoudle is available under the MIT license. See the LICENSE file for more info.

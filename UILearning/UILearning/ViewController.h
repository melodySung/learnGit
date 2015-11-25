//
//  ViewController.h
//  UILearning
//
//  Created by wangxuan on 15/11/12.
//  Copyright (c) 2015年 wangxuan. All rights reserved.
//

#import <UIKit/UIKit.h>

//@interface ViewController : UIViewController
@interface ViewController : UIViewController

#pragma mark logo
@property (nonatomic,strong) UIImageView *logo;
#pragma mark 手机号码
@property (nonatomic,strong) UITextField *phoneNumber;
#pragma mark 密码
@property (nonatomic,strong) UITextField *password;
#pragma mark 登录按钮
@property (nonatomic,strong) UIButton *loginButton;

#pragma mark 点击事件
-(void)login:(UIButton *)btn;

@end




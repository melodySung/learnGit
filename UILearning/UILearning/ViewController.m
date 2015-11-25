//
//  ViewController.m
//  UILearning
//
//  Created by wangxuan on 15/11/12.
//  Copyright (c) 2015年 wangxuan. All rights reserved.
//

#import "ViewController.h"
@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.view.backgroundColor=[UIColor redColor];
    
    //添加图片
    CGRect logoRect=CGRectMake(100, 50, 100, 200);
    _logo=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"LoginBackground.png"]];//设置图片
    _logo.contentMode=UIViewContentModeScaleAspectFit;//设置内容填充模式
    _logo.frame=logoRect;//设置控件大小和位置（相对于父控件的位置）
    [self.view addSubview:_logo];//添加到KCMainViewController的View中
    
    //添加手机号码输入框
    CGRect phoneNumberRect=CGRectMake(20, 320, 280, 30);
    _phoneNumber=[[UITextField alloc]initWithFrame:phoneNumberRect];
    _phoneNumber.borderStyle=UITextBorderStyleRoundedRect;//设置文本框的边框样式
    [self.view addSubview:_phoneNumber];
    
    //添加密码输入框
    CGRect passwordRect=CGRectMake(20, 380, 280, 30);
    _password=[[UITextField alloc]initWithFrame:passwordRect];
    _password.borderStyle=UITextBorderStyleRoundedRect;
    [self.view addSubview:_password];
    
    //添加登录按钮
    CGRect loginButtonRect=CGRectMake(10, 440, 300, 25);
    _loginButton=[[UIButton alloc]initWithFrame:loginButtonRect];
    [_loginButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];//设置标题内容颜色
    [_loginButton setTitle:@"登录" forState:UIControlStateNormal];//设置按钮标题
    [_loginButton addTarget:self action:@selector(login:) forControlEvents:UIControlEventTouchUpInside];//添加点击事件
    [self.view addSubview:_loginButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)login:(UIButton *)btn{
    if ([_phoneNumber.text isEqual:@"123"]&&[_password.text isEqual:@"456"]) {
        NSLog(@"登录成功！");
    }else{
        NSLog(@"登录失败！");
    }
}


@end
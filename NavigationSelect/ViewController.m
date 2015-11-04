//
//  ViewController.m
//  NavigationSelect
//
//  Created by huchunyuan on 15/11/3.
//  Copyright © 2015年 huchunyuan. All rights reserved.
//

#import "ViewController.h"
#import "UserSelectView.h"

/** 用户选择界面button宽高 */
#define kUserButtonWidth 44
#define kUserButtonHight 31.5
@interface ViewController ()<UserSelectViewDelegate>
@property (strong, nonatomic) UserSelectView *selectView;
@property (strong, nonnull) UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _button = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.button addTarget:self action:@selector(selectAction:) forControlEvents:(UIControlEventTouchUpInside)];
    self.button.frame = CGRectMake(0, 0, 44, 44);
    [self.button setTitle:@"全部" forState:(UIControlStateNormal)];
    [self.button setBackgroundImage:[UIImage imageNamed:@"框.png"] forState:(UIControlStateNormal)];
    [self.button setTitleColor:[UIColor colorWithRed:130/255.0 green:223/255.0 blue:176/255.0 alpha:0.8] forState:(UIControlStateNormal)];
    UIBarButtonItem *rightBar = [[UIBarButtonItem alloc] initWithCustomView:self.button];
    self.navigationItem.rightBarButtonItem = rightBar;

    _selectView = [[UserSelectView alloc] initWithFrame:CGRectMake(414 - kUserButtonWidth-20, 64, kUserButtonWidth, kUserButtonHight*4)];
    _selectView.delegate = self;
    [self.view addSubview:self.selectView];
    
}
- (void)didSelectPassString:(NSString *)str{
    [self.button setTitle:str forState:(UIControlStateNormal)];
    _selectView.hidden = YES;
}
- (void)selectAction:(UIButton *)bt{
    _selectView.hidden = NO;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

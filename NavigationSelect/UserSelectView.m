//
//  UserSelectView.m
//  NavigationSelect
//
//  Created by huchunyuan on 15/11/3.
//  Copyright © 2015年 huchunyuan. All rights reserved.
//

#import "UserSelectView.h"

/** 用户选择界面button宽高 */
#define kUserButtonWidth 44
#define kUserButtonHight 31.5

@interface UserSelectView ()

@end

@implementation UserSelectView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:130/255.0 green:223/255.0 blue:176/255.0 alpha:0.8];
        NSArray *array = [NSArray arrayWithObjects:@"全部",@"影视",@"音乐",@"文字",nil];
        
        for (int i = 0 ; i < array.count; i++) {
            UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
            button.frame = CGRectMake(0, i*kUserButtonHight, self.frame.size.width, kUserButtonHight);
            [button setTitle:array[i] forState:(UIControlStateNormal)];
            [button addTarget:self action:@selector(buttonClick:) forControlEvents:(UIControlEventTouchUpInside)];
            [button setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
            [self addSubview:button];

        }
        
    }
    return self;
}
- (void)buttonClick:(UIButton *)button{
    [_delegate didSelectPassString:button.titleLabel.text];
}
@end

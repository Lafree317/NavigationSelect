//
//  UserSelectView.h
//  NavigationSelect
//
//  Created by huchunyuan on 15/11/3.
//  Copyright © 2015年 huchunyuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol UserSelectViewDelegate <NSObject>
/** 点击按钮输出内容 */
- (void)didSelectPassString:(NSString *)str;

@end


@interface UserSelectView : UIView
@property (assign, nonatomic)id<UserSelectViewDelegate>delegate;
@end

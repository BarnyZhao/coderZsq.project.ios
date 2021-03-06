//
//  UIViewController+SQExtension.m
//
//  Created by Doubles_Z on 16-6-25.
//  Copyright (c) 2016年 Doubles_Z. All rights reserved.
//

#import "UIViewController+SQExtension.h"

@implementation UIViewController (SQExtension)

- (void)navigationBarGradualChangeWithScrollView:(UIScrollView *)scrollView titleView:(UIView *)titleView movableView:(UIView *)movableView offset:(CGFloat)offset color:(UIColor *)color {

    float alpha = 1 - ((offset - scrollView.contentOffset.y) / offset);
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageWithColor:[color colorWithAlphaComponent:alpha > 0.95f ? 0.95f : alpha]] forBarMetrics:UIBarMetricsDefault];
    titleView  .hidden = scrollView.contentOffset.y > offset ? NO : YES;
    movableView.hidden = !titleView  .hidden;
}

@end

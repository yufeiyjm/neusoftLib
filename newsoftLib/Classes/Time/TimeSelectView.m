//
//  TimeSelectView.m
//  FrameWork2.0
//
//  Created by jiaming yan on 2017/3/2.
//  Copyright © 2017年 yanjiaming. All rights reserved.
//

#import "TimeSelectView.h"

@implementation TimeSelectView

-(void)creatTimeSelectView:(UIView *)aView{
    UIView *lineTop = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    lineTop.backgroundColor = [UIColor redColor];
    [aView addSubview:lineTop];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

//
//  TypePickerView.h
//  FrameWork2.0
//
//  Created by yanjiaming on 17/3/5.
//  Copyright © 2017年 yanjiaming. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TypePickerView : UIView<UIPickerViewDelegate,UIPickerViewDataSource>
@property (strong, nonatomic) UIPickerView *typePick;
@property (strong, nonatomic)  NSArray *typeArr;
@property (strong, nonatomic)  NSArray *typeArr1;
@property (assign, nonatomic)  NSInteger selected;
@property(nonatomic,strong) void(^selectPicker)(id object);

-(void)creatTypePickerView:(UIView *)aView;
@end

//
//  TypePickerView.m
//  FrameWork2.0
//
//  Created by yanjiaming on 17/3/5.
//  Copyright © 2017年 yanjiaming. All rights reserved.
//

#import "TypePickerView.h"

@implementation TypePickerView

-(void)creatTypePickerView:(UIView *)aView{
    UIView *lineTop = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    lineTop.backgroundColor = [UIColor redColor];
    [aView addSubview:lineTop];
}
-(void)setSelected:(NSInteger)selected{
    _selected = selected;
    [self.typePick selectRow:selected inComponent:0 animated:YES];
}
-(void)cancleClick{
   
}
-(void)finishClick{
   
    if (self.selectPicker) {
        
       
    }
}
#pragma Mark -- UIPickerViewDataSource
// pickerView 列数
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    if (self.typeArr1.count==0) {
        return 1;
    }else{
        return 2;
    }
}

// pickerView 每列个数
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    if (self.typeArr1.count==0) {
        return [self.typeArr count];
    }else{
        if (component==0) {
            return [self.typeArr count];
        }else if (component==1){
            return [self.typeArr1 count];
        }
    }
    return 0;
    
}
//返回当前行的内容,此处是将数组中数值添加到滚动的那个显示栏上
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    if (self.typeArr1.count==0) {
        return [_typeArr objectAtIndex:row];

    }else{
        if (component==0) {
            return [_typeArr objectAtIndex:row];
        }else if (component==1){
            return [_typeArr1 objectAtIndex:row];
        }
    }
    return @"";
}
// 返回选中的行
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    if (self.typeArr1.count !=0) {
        if (component==0&row==0&&[_typeArr[0]isEqualToString:@"至今"]) {
            self.typeArr1 = @[@""];
        }else{
            self.typeArr1 = @[@"01",@"02",@"03",@"04",@"05",@"06",@"07",@"08",@"09",@"10",@"11",@"12"];
        }
        [self.typePick reloadAllComponents];
    }
}

@end

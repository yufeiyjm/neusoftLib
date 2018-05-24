//
//  NeuViewController.m
//  newsoftLib
//
//  Created by jiaming yan on 05/24/2018.
//  Copyright (c) 2018 jiaming yan. All rights reserved.
//

#import "NeuViewController.h"
#import "TimeSelectView.h"

@interface NeuViewController ()

@end

@implementation NeuViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    TimeSelectView *time = [[TimeSelectView alloc]init];
    time.selectTime = ^(NSString *timeStr){
        NSLog(@"%@",timeStr);
    };
    [time creatTimeSelectView:self.view];
    [time.timePicker setDate:[NSDate dateWithTimeIntervalSince1970:1262275200]];
    time.timePicker.maximumDate= [NSDate date];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

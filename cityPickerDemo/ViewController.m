//
//  ViewController.m
//  cityPickerDemo
//
//  Created by 王龙 on 16/3/24.
//  Copyright © 2016年 Larry（Lawrence）. All rights reserved.
//

#import "ViewController.h"
#import "mePickView.h"
@interface ViewController ()<mePickViewDelegate>
@property(nonatomic, weak)UILabel * label;
@property(nonatomic, strong)mePickView * pickView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(00,120, self.view.bounds.size.width, 45)];
    label.backgroundColor = [UIColor orangeColor];
    label.textAlignment = NSTextAlignmentCenter;
    self.label = label;
    [self. view addSubview:label];
    
    _pickView = [[mePickView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(label.frame)+10, self.view.bounds.size.width, 180)];
    _pickView.backgroundColor = [UIColor greenColor];
    _pickView.delegate = self;
    [self.view addSubview:_pickView];
    
}

-(void)selectCity:(NSString *)city{
    self.label.text = city;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

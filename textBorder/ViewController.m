//
//  ViewController.m
//  textBorder
//
//  Created by 黄少华 on 16/3/7.
//  Copyright © 2016年 黄少华. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view = [[UIView alloc] init];
    [self.view addSubview:view];
    view.backgroundColor = [UIColor redColor];
    view.frame = CGRectMake(100, 100, 100, 100);
    
    [self addBorderToLayer:view];
}

- (void)addBorderToLayer:(UIView *)view
{
    CAShapeLayer *border = [CAShapeLayer layer];
    
    border.strokeColor = [UIColor blackColor].CGColor;
    
    border.fillColor = nil;
    
    border.path = [UIBezierPath bezierPathWithRect:view.bounds].CGPath;
    
    border.frame = view.bounds;
    
    border.lineWidth = 1.f;
    
    border.lineCap = @"square";
    
    border.lineDashPattern = @[@4, @2];
    
    [view.layer addSublayer:border];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

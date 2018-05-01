//
//  ViewController.m
//  UIDemo
//
//  Created by Алексей on 27.04.2018.
//  Copyright © 2018 Алексей. All rights reserved.
//

#import "ViewController.h"
#import "MovableView.h"

@interface ViewController ()
@property (retain, nonatomic) UIView *subView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 200;
    CGFloat height = 300;
    
    CGRect frame = CGRectMake(self.view.center.x - width/2, self.view.center.y - height/2, width, height);
    _subView = [[MovableView alloc] initWithFrame:frame];
    
    _subView.backgroundColor = UIColor.redColor;
    
    [self.view addSubview:_subView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    [_subView release];
    [super dealloc];
}
@end

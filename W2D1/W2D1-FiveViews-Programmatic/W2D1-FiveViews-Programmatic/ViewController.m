//
//  ViewController.m
//  W2D1-FiveViews-Programmatic
//
//  Created by Massimo Savino on 2019-06-03.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()


@end

@implementation ViewController {
    UIView *_viewA;
    UIView *_viewB;
    UIView *_viewC;
    UIView *_viewD;
    UIView *_viewE;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _viewA = [[UIView alloc] initWithFrame:CGRectMake(20, 44, 374, 808)];
    [_viewA setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:_viewA];
    
    _viewB = [[UIView alloc] initWithFrame: CGRectMake(8, 8, 358, 300)];
    _viewB.backgroundColor = UIColor.yellowColor;
    [self.view addSubview:_viewB];
    
    _viewC = [[UIView alloc] initWithFrame: CGRectMake(8, 316, 358, 484)];
    _viewC.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_viewC];
    
    _viewD = [[UIView alloc] initWithFrame: CGRectMake(8, 316, 342, 227)];
    _viewD.backgroundColor = UIColor.cyanColor;
    [self.view addSubview:_viewD];
    
    _viewE = [[UIView alloc] initWithFrame: CGRectMake(8, 8, 342, 227)];
    _viewE.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_viewE];
    
    [self.view layoutIfNeeded];
    
}

- (instancetype) init {
    if (self = [super init]) {
        self.viewA = _viewA;
        self.viewB = _viewB;
        self.viewC = _viewC;
        self.viewD = _viewD;
    }
    return self;
}


@end

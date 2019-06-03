//
//  ViewController.m
//  W2D1DR-ViewHierarchy-Programmatic
//
//  Created by Massimo Savino on 2019-05-31.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    UIView *_viewA;
    UIView *_viewB;
    UIView *_viewC;
    UIView *_viewD;
    UIView *_viewE;
    
    // NSMutableArray *_internalViews = @[];
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _viewA = [[UIView alloc] initWithFrame: CGRectMake(20, 44, 374, 818)];
    self.viewA = _viewA;

    [self.viewA setBackgroundColor:[UIColor blueColor]];
    
    _viewB = [[UIView alloc] initWithFrame: CGRectMake(40, 64, 338, 262)];
    self.viewB = _viewB;
    
    self.viewB.backgroundColor = [UIColor yellowColor];
    
    _viewC = [[UIView alloc] initWithFrame: CGRectMake(40, 356, 338, 494)];
    self.viewC = _viewC;
    
    self.viewC.backgroundColor = UIColor.yellowColor;
    
    _viewD = [[UIView alloc] initWithFrame: CGRectMake(58, 374, 303, 149)];
    self.viewD = _viewD;
    
    [self.viewD setBackgroundColor: [UIColor cyanColor]];
    
    _viewE = [[UIView alloc] initWithFrame: CGRectMake(58, 571, 303, 149)];
    self.viewE = _viewE;
    
    self.viewE.backgroundColor = UIColor.greenColor;
    
    [self.view addSubview: self.viewA];
    [self.view addSubview: self.viewB];
    [self.view addSubview: self.viewC];
    [self.view addSubview: self.viewD];
    [self.view addSubview: self.viewE];
    
    [self.view layoutIfNeeded];
}

@end

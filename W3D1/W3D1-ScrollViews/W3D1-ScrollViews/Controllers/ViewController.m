//
//  ViewController.m
//  W3D1-ScrollViews
//
//  Created by Massimo Savino on 2019-06-06.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import "ViewController.h"

#pragma mark - ViewController private interface

@interface ViewController () {
    CGFloat lastScale;
}

@end


#pragma mark - ViewController private implementation

@implementation ViewController

#pragma mark - Lifecycle and initialization

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *backdrop = [UIImage imageNamed:@"GoTKL1.jpg"];
    self.threeDImageView = [[UIImageView alloc] initWithImage:backdrop];
    
    // Why would this make constraints for the scrollview redundant?
    //self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectZero];
    
    self.scrollView.scrollEnabled = true;
    self.scrollView.delegate = self;
    
    [self.view addSubview: self.scrollView];
    [self.scrollView addSubview: self.threeDImageView];
    
    self.scrollView.contentSize = backdrop.size;
    
    // IMPORTANT: This is implied: contentView.BOUNDS.size = self.scrollView.FRAME.size;
    
    // MUST provide nonconflicting constraint set
    self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.scrollView.topAnchor constraintEqualToAnchor:self.view.topAnchor].active = YES;
    [self.scrollView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor].active = YES;
    [self.scrollView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor].active = YES;
    [self.scrollView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor].active = YES;
    
    [self.threeDImageView.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [self.threeDImageView.leftAnchor constraintEqualToAnchor:self.scrollView.leftAnchor].active = YES;
    [self.threeDImageView.rightAnchor constraintEqualToAnchor:self.scrollView.rightAnchor].active = YES;
    [self.threeDImageView.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    
    self.scrollView.minimumZoomScale = 0.1;
    self.scrollView.maximumZoomScale = 1.0;
    
}

#pragma mark - UIScrollViewDelegate conformant methods

- (void) scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"%@", NSStringFromCGPoint(scrollView.contentOffset));
}

#pragma mark - UIView methods to use the scrollview

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.threeDImageView;
}


#pragma mark - UIView methods for touch recognition

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
}

- (void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesEnded:touches withEvent:event];
}

- (void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesMoved:touches withEvent:event];
}

- (void) touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesCancelled:touches withEvent:event];
}



@end

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
    CGRect rootViewRect;
    CGRect scrollViewRect;
    CGRect contentViewRect;
    
    NSLayoutConstraint *scrollViewTop;
    NSLayoutConstraint *scrollViewBottom;
    NSLayoutConstraint *scrollViewLeft;
    NSLayoutConstraint *scrollViewRight;
    
    NSLayoutConstraint *contentViewTop;
    NSLayoutConstraint *contentViewBottom;
    NSLayoutConstraint *contentViewLeft;
    NSLayoutConstraint *contentViewRight;
}

@end


#pragma mark - ViewController private implementation

@implementation ViewController

#pragma mark - Lifecycle and initialization

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // INFO: Constituent parts
    rootViewRect = self.view.bounds;
    
    // scrollViewRect = CGRectInset(rootViewRect, 40, 100);
    scrollViewRect = rootViewRect;
    
    self.scrollView = [[UIScrollView alloc] initWithFrame: scrollViewRect];
    self.scrollView.scrollEnabled = true;
    self.scrollView.delegate = self;
    
    // IMPORTANT: This is implied: contentView.BOUNDS.size = self.scrollView.FRAME.size;
    contentViewRect = scrollViewRect;
    
    self.contentView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"GoTKL2.jpg"]];
    [self.contentView setUserInteractionEnabled:true];
    
    self.panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(drag:)];
    [self.panRecognizer setDelegate:self.contentView];
    [self.panRecognizer setMinimumNumberOfTouches:1];
    [self.panRecognizer setMaximumNumberOfTouches:2];
    
    [self.contentView addGestureRecognizer:self.panRecognizer];
    
    [self.scrollView addSubview: self.contentView];
    [self.view addSubview: self.scrollView];
    
    [self setupConstraints];
    
}

#pragma mark - Own methods

- (void) drag: (id)sender {
    NSLog(@"drag - pan called");
    
    [self.scrollView bringSubviewToFront:[(UIPanGestureRecognizer *)sender view]];
    
    CGPoint translatedPoint = [(UIPanGestureRecognizer *)sender translationInView:self.scrollView];
    
    CGFloat initialX;
    CGFloat initialY;
    CGFloat finalX;
    CGFloat finalY;
    
    
    if ([(UIPanGestureRecognizer *)sender state] == UIGestureRecognizerStateBegan) {
        initialX = [[sender view] center].x;
        initialY = [[sender view] center].y;
    }
    
    translatedPoint = CGPointMake(initialX + translatedPoint.x, initialY + translatedPoint.y);
    [[sender view] setCenter:translatedPoint];
    
    if ([(UIPanGestureRecognizer *)sender state] == UIGestureRecognizerStateEnded) {
        
                                             // Inertial momentum & deceleration
        finalX = translatedPoint.x + (0.35 * [(UIPanGestureRecognizer *)sender velocityInView:self.scrollView].x);
        finalY = translatedPoint.y + (0.35 * [(UIPanGestureRecognizer *)sender velocityInView:self.scrollView].y);
        
        // Animate out
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.35];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseOut], [[sender view] setCenter:CGPointMake(finalX, finalY)];
        [UIView commitAnimations];
    }
    
    [self.scrollView sendSubviewToBack:[(UIPanGestureRecognizer *)sender view]];
}

- (void) scale: (id)sender {
    NSLog(@"scale/zoom called");
    
}

- (void) setupConstraints {
    scrollViewTop = [NSLayoutConstraint constraintWithItem:self.scrollView
                                                 attribute:NSLayoutAttributeTop
                                                 relatedBy:NSLayoutRelationEqual
                                                    toItem:self.view
                                                 attribute:NSLayoutAttributeTop
                                                multiplier:1.0
                                                  constant:0];
    
    scrollViewLeft = [NSLayoutConstraint constraintWithItem:self.scrollView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual  toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0];
    
    scrollViewRight = [NSLayoutConstraint constraintWithItem:self.scrollView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
    
    scrollViewBottom = [NSLayoutConstraint constraintWithItem:self.scrollView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    
    //NSArray *constraints = @[scrollViewTop, scrollViewLeft, scrollViewRight, scrollViewBottom];
    scrollViewTop.active = true;
    scrollViewLeft.active = true;
    scrollViewRight.active = true;
    scrollViewBottom.active = true;
    
    contentViewTop = [NSLayoutConstraint constraintWithItem:self.contentView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeTop multiplier:1.0 constant:0];
    
    contentViewLeft = [NSLayoutConstraint constraintWithItem:self.contentView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0];
    
    contentViewRight = [NSLayoutConstraint constraintWithItem:self.contentView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeRight multiplier:1.0 constant:0];
    
    contentViewBottom = [NSLayoutConstraint constraintWithItem:self.contentView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.scrollView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0];
    
    contentViewTop.active = true;
    contentViewLeft.active = true;
    contentViewRight.active = true;
    contentViewBottom.active = true;
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

#pragma mark - updateMinimumZoomScaleForSize

- (void) updateMinimumZoomScale: (CGSize)size {
    CGFloat widthScale = size.width / self.contentView.bounds.size.width;
    CGFloat heightScale = size.height / self.contentView.bounds.size.height;
    CGFloat minimumScale = MAX(widthScale, heightScale);
    
}

#pragma mark - Helper functions

/// Later.

- (void) setupScrollView {
    // MARK: Scrollview instantiation and configuration
    self.scrollView = [[UIScrollView alloc] initWithFrame: scrollViewRect];
    self.scrollView.scrollEnabled = true;
}

- (void) setupContentViewWithImage: (BOOL) isImage {

    if (isImage) {
        self.contentView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"GoTKL2.jpg"]];
    } else {
        self.contentView = [[UITextView alloc] initWithFrame:contentViewRect];
    }
}



@end

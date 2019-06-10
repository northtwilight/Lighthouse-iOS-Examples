//
//  ViewController.h
//  W3D1-ScrollViews
//
//  Created by Massimo Savino on 2019-06-06.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, weak) id<UIScrollViewDelegate> delegate;

@property (nonatomic, strong) UIView *contentView;

@property (nonatomic, strong) UIPanGestureRecognizer *panRecognizer;
@property (nonatomic, strong) UIPinchGestureRecognizer *pinchRecognizer;

- (void) setupContentViewWithImage: (BOOL) isImage;

- (void) scale: (id)sender;
- (void) drag: (id)sender;

- (void) setupConstraints;

@end


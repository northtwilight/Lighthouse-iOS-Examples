//
//  ViewController.h
//  W3D1-ScrollViews
//
//  Created by Massimo Savino on 2019-06-06.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, weak) id<UIScrollViewDelegate> delegate;

@property (nonatomic, strong) UIImageView *threeDImageView;

@end


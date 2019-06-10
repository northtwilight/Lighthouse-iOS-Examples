//
//  AutoLayoutDemoViewController.h
//  W2D2-AutoLayoutDemo
//
//  Created by Massimo Savino on 2019-06-03.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AutoLayoutDemoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *checkMarkIcon;
@property (weak, nonatomic) IBOutlet UIImageView *rubberDuckImageView;
@property (weak, nonatomic) IBOutlet UILabel *rubberDuckyLabel;
@property (weak, nonatomic) IBOutlet UITextView *rubberTextView;
@property (weak, nonatomic) IBOutlet UIButton *transformIconsButton;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *checkMarkHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *checkMarkWidth;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rubberTextWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rubberTextHeight;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rubberDuckIconWidth;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rubberDuckIconHeight;

- (IBAction)transformPressed:(UIButton *)sender;


@end

NS_ASSUME_NONNULL_END

//
//  AutoLayoutDemoViewController.m
//  W2D2-AutoLayoutDemo
//
//  Created by Massimo Savino on 2019-06-03.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import "AutoLayoutDemoViewController.h"

@interface AutoLayoutDemoViewController ()

@end

@implementation AutoLayoutDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.checkMarkHeight = [[NSLayoutConstraint alloc] constraintWithItem: self.checkMarkIcon
                                                                 attribute: NSLayoutAttributeHeight
                                                                 relatedBy: NSLayoutRelationEqual
                                                                    toItem: nil
                                                                 attribute: NSLayoutAttributeNotAnAttribute
                                                                multiplier: 1.0
                                                                  constant: 102.0];
    self.checkMarkHeight.active = YES;
    
    self.checkMarkWidth = [[NSLayoutConstraint alloc] constraintWithItem: self.checkMarkIcon
                                                               attribute: NSLayoutAttributeWidth
                                                               relatedBy: NSLayoutRelationEqual
                                                                  toItem: nil
                                                               attribute: NSLayoutAttributeNotAnAttribute
                                                              multiplier: 1.0
                                                                constant: 86.0];
    self.checkMarkHeight.active = YES;
                            
}

- (IBAction)transformPressed:(UIButton *)sender {
    
    self.checkMarkWidth.multiplier = 2.0
    self.checkMarkWidth.active = YES;
    
    self.checkMarkHeight.multiplier = 1.5
    self.checkMarkHeight.active = YES;
    [UIView animateWithDuration:5.0 animations:^() {
      self.checkMarkWidth
    }]
}
@end

//
//  ViewController.m
//  GestureRecognizers
//
//  Created by David Mills on 2019-05-09.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIView *redBox;
@property (strong, nonatomic) UITapGestureRecognizer *tapRecog;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.view.userInteractionEnabled = true;
  

  self.tapRecog = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(redBoxTapped:)];
  self.tapRecog.numberOfTouchesRequired = 2;
    
  self.view.multipleTouchEnabled = true;
    
  [self.redBox addGestureRecognizer:self.tapRecog];
  [self.view addSubview:self.redBox];
}



- (UIView *)redBox {
  if (!_redBox) {
    _redBox = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    _redBox.backgroundColor = [UIColor redColor];
  }

  return _redBox;
}

- (void)redBoxTapped:(UITapGestureRecognizer *)recog {
  NSLog(@"Red Box Tapped!, %@, %lu", recog, (unsigned long)recog.numberOfTouches);
}


@end

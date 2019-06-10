//
//  ViewController.m
//  KVO
//
//  Created by David Mills on 2019-05-09.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "ViewController.h"
#import "Counter.h"

@interface ViewController ()

@property (strong, nonatomic) Counter *counter;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.

  [self.counter addObserver:self forKeyPath:@"count" options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld) context:nil];
}

- (Counter *)counter {
  if (!_counter) {
    _counter = [Counter new];
  }

  return _counter;
}

- (IBAction)addButtonTapped:(id)sender {
  [self.counter add];
}

- (IBAction)subButtonTapped:(id)sender {
  [self.counter remove];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
  if (object == self.counter && [keyPath isEqualToString:@"count"]) {
    NSLog(@"The count changed: %@", change);
  }
}


@end

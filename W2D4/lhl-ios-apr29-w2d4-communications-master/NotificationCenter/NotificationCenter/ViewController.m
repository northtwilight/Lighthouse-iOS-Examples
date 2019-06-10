//
//  ViewController.m
//  NotificationCenter
//
//  Created by David Mills on 2019-05-09.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (readonly, nonatomic) NSNotificationCenter *notificationCenter;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.

  [self.notificationCenter addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
  [self.notificationCenter addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
  [self.notificationCenter addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
  [self.notificationCenter addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
  [self.notificationCenter addObserver:self selector:@selector(buttonNotification:) name:ViewControllerButtonNotification object:nil];
}

- (void)dealloc {
  [self.notificationCenter removeObserver:self];
}

- (NSNotificationCenter *)notificationCenter {
  return [NSNotificationCenter defaultCenter];
}

- (IBAction)buttonTapped:(id)sender {
  NSNotification *notification = [[NSNotification alloc]
                                  initWithName:ViewControllerButtonNotification
                                  object:self
                                  userInfo:@{ @"foo": @"bar" }
                                  ];
  [self.notificationCenter postNotification:notification];
}

- (void)buttonNotification:(NSNotification *)notification {
  NSLog(@"Got a button notification! %@", notification);
}

- (void)keyboardWillShow:(NSNotification *)notification {
  NSLog(@"Keyboard will show, %@", notification);
}

- (void)keyboardDidShow:(NSNotification *)notification {
  NSLog(@"Keyboard did show, %@", notification);
  [self.textField resignFirstResponder];
}

- (void)keyboardWillHide:(NSNotification *)notification {
  NSLog(@"Keyboard will hide, %@", notification);
}

- (void)keyboardDidHide:(NSNotification *)notification {
  NSLog(@"Keyboard did hide, %@", notification);
}


@end

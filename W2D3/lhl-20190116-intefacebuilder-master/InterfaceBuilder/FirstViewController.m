//
//  ViewController.m
//  InterfaceBuilder
//
//  Created by Roland on 2019-01-16.
//  Copyright © 2019 Game of Apps. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self performSegueWithIdentifier:@"segueToSecondScreen" sender:self];
}


@end

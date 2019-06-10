//
//  SecondViewController.m
//  InterfaceBuilder
//
//  Created by Roland on 2019-01-16.
//  Copyright © 2019 Game of Apps. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *myToggle;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)buttonTapped:(UIButton *)sender {
    if (self.myToggle.isOn) {
        [self performSegueWithIdentifier:@"segueToThirdScreen" sender:sender];
    }
    else {
        [self performSegueWithIdentifier:@"segueToFouthScreen" sender:sender];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if (segue.identifier isEqualToString:@"segueToThirdScreen")
    if ([segue.destinationViewController isKindOfClass:[ThirdViewController class]]) {
        ThirdViewController *thirdViewController = segue.destinationViewController;
        thirdViewController.textToUse = @"Coming from Second View Controller";
    }
}

@end

//
//  ViewController.m
//  ViewControllers
//
//  Created by David Mills on 2019-05-08.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *mainLabel;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (weak, nonatomic) IBOutlet UILabel *stepperLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.

  self.mainLabel.text = @"Hello, Class!";
  self.stepperLabel.text = [NSString stringWithFormat:@"%0.f", self.stepper.value];
}

- (IBAction)stepperValueChanged:(id)sender {
 self.stepperLabel.text = [NSString stringWithFormat:@"%0.f", self.stepper.value];
}

- (IBAction)buttonTapped:(id)sender {
  [self performSegueWithIdentifier:@"next" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString:@"next"]) {
    SecondViewController *dvc = segue.destinationViewController;
    dvc.name = @"Dave";
  }
}

@end

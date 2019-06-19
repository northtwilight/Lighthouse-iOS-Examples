//
//  ViewController.m
//  SayHelloDelegate
//
//  Created by Daniel Mathews on 2015-03-26.
//  Copyright (c) 2015 ca.lighthouselabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"goToSecondVC"]) {
        SecondViewController *secondVC = segue.destinationViewController;
        secondVC.delegate = self;
    }
}

-(void)sayHelloMethod:(NSString *)text{
    self.myLabel.text = text;
    NSLog(@"inside helloMethod");
}

@end

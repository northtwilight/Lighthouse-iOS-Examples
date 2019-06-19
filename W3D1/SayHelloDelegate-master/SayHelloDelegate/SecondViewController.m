//
//  SecondViewController.m
//  SayHelloDelegate
//
//  Created by Daniel Mathews on 2015-03-26.
//  Copyright (c) 2015 ca.lighthouselabs. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"in textFieldDidEndEditing");
    [self.delegate sayHelloMethod:textField.text];
    [textField resignFirstResponder];
    [self dismissViewControllerAnimated:true completion:nil];
    return true;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

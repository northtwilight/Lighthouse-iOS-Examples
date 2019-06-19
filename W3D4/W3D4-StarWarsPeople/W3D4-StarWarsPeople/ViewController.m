//
//  ViewController.m
//  W3D4-StarWarsPeople
//
//  Created by Massimo Savino on 2019-06-12.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()




@end

@implementation ViewController


#pragma mark - Lifecycle and initialization

- (instancetype) initWithTableView: (UITableView *)tableView {
    self = [super init];
    if (self) {
        self.tableView = tableView;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - UITableViewDataSource conformance

- (NSInteger)tableView:tableView numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    NSDictionary *person = self.people[indexPath.row];
    cell.textLabel.text = person[@"name"];
    return cell;
}

#pragma mark - IBActions

- (IBAction)callStarWarsPeople:(UIButton *)sender {
    NSLog(@"Called Star Wars API");
}


@end

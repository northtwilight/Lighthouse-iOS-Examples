//
//  LTVViewController.m
//  W3D2-LTVTableaux
//
//  Created by Massimo Savino on 2019-06-11.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import "LTVViewController.h"
#import "LTVTableViewCell.h"
#import "LTVViewController+Parks.m"
#import "NationalPark.h"
#import "ParkBuilder.h"

@interface LTVViewController ()

@end

@implementation LTVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nationalParks =
}

#pragma mark - UITableViewDataSource conformance

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100; // <--- [row count]
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LTVTableViewCell *cell = (LTVTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"ltvCell"];
    
    
    cell.parkName.text = @"This is an example of static content";
    // cell.parkPhoto = [[UIImageView alloc] initWithImage: [UIImage imageNamed:@"%@", self.nationalParks[indexPath]]]
    return cell;
}

@end

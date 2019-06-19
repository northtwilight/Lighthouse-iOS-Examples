//
//  ViewController.h
//  W3D4-StarWarsPeople
//
//  Created by Massimo Savino on 2019-06-12.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray<NSDictionary *> *people;

- (instancetype) initWithTableView: (UITableView *)tableView;
@end


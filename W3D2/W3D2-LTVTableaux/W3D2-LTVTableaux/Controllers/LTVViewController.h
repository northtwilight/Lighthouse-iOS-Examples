//
//  LTVViewController.h
//  W3D2-LTVTableaux
//
//  Created by Massimo Savino on 2019-06-11.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "ParkBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface LTVViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *nationalParks;
@property (nonatomic, strong) ParkBuilder *parkBuilder;


@end

NS_ASSUME_NONNULL_END

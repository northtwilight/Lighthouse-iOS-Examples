//
//  IndonesianRestaurant.m
//  W1D3-OOP-Inheritance
//
//  Created by Massimo Savino on 2019-05-28.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Restaurant.h"
#import "AsianRestaurant.h"
#import "IndonesianRestaurant.h"

@interface IndonesianRestaurant()

@property (nonatomic, strong) NSString *spicySatay;
@property (nonatomic, strong) NSString *nuclearSatay;
@property (nonatomic, strong) NSMutableArray *satays;

@end

@implementation IndonesianRestaurant

- (instancetype) init {
    
    self = [super init];
    return self;
}

- (instancetype) initWithMenu: (NSArray *)menu {
    _spicySatay = @"Spicy Satay";
    _nuclearSatay = @"Nuclear Satay";
    _satays = [[NSMutableArray alloc] initWithObjects:_spicySatay, _nuclearSatay, nil];
    
    self = [super init];
    if (self) {
        self.menu = [_satays arrayByAddingObjectsFromArray:menu];
    }
    return self;
}

@end


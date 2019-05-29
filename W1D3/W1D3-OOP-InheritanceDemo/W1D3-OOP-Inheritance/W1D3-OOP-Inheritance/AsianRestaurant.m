//
//  AsianRestaurant.m
//  W1D3-OOP-Inheritance
//
//  Created by Massimo Savino on 2019-05-28.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Restaurant.h"
#import "AsianRestaurant.h"


@implementation AsianRestaurant

- (instancetype) init {
    
    self = [super init];
    return self;
}

- (instancetype) initWithMenu: (NSArray *)menu {
    
    self = [super init];
    if (self) {
        self.menu = menu;
    }
    return self;
}

@end

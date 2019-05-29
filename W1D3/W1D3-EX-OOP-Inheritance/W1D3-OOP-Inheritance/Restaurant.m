//
//  Restaurant.m
//  W1D3-OOP-Inheritance
//
//  Created by Massimo Savino on 2019-05-28.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Restaurant.h"


@implementation Restaurant

- (void) printSelf {
    NSLog(@"%@\n%@", [self className], [self description]);
}

- (instancetype) init {
    
    self = [super init];
    _isOpen = false;
    
    if (self) {
        [self printSelf];

        _isOpen = true;
        [self opensForBusiness];
        
    }
    return self;
}

- (void) opensForBusiness {
    if (self.isOpen == true) {
        _hasDelivery = true;        // why is this a bad idea?
        _hasTakeout = true;         // ditto
        NSLog(@"OPEN FOR BUSINESS\n\t\t\t\tThis restaurant can now accept customers");
    }
}

- (void) printsMenuFromCookbook: (NSArray *)dishes {
    for (id obj in dishes) {
        NSLog(@"%@", obj);
    }
}


- (void) printBreak {
    NSLog(@"  = = = = =  ");
}
@end


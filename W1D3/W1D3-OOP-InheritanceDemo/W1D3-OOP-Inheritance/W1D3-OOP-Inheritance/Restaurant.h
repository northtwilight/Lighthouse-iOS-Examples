//
//  Restaurant.h
//  W1D3-OOP-Inheritance
//
//  Created by Massimo Savino on 2019-05-28.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#ifndef Restaurant_h
#define Restaurant_h

#endif /* Restaurant_h */

@interface Restaurant : NSObject

@property (nonatomic) NSUInteger seatingCount;
@property (nonatomic, strong) NSArray *menu;
@property BOOL hasTakeout;
@property BOOL hasDelivery;
@property BOOL isOpen;

- (instancetype) init;
- (void) opensForBusiness;
- (void) printsMenuFromCookbook: (NSArray *)dishes;
- (void) printBreak;

@end

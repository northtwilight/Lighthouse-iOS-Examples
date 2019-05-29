//
//  AsianRestaurant.h
//  W1D3-OOP-Inheritance
//
//  Created by Massimo Savino on 2019-05-28.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#ifndef AsianRestaurant_h
#define AsianRestaurant_h

#endif /* AsianRestaurant_h */


@interface AsianRestaurant : Restaurant

@property (nonatomic, assign) BOOL hasVeganMenu;

- (instancetype) init;
- (instancetype) initWithMenu: (NSArray *)menu;

@end

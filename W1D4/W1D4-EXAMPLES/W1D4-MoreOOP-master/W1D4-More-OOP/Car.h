//
//  Car.h
//  W1D4-More-OOP
//
//  Created by Daniel Mathews on 2018-08-02.
//  Copyright © 2018 Daniel Mathews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarDriver.h"

@interface Car : NSObject
    
@property (nonatomic, weak) id<CarDriver> driver;
@property (nonatomic, assign) float distance;


-(void) drive;

@end

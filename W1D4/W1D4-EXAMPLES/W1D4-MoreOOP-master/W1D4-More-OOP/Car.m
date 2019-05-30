//
//  Car.m
//  W1D4-More-OOP
//
//  Created by Daniel Mathews on 2018-08-02.
//  Copyright © 2018 Daniel Mathews. All rights reserved.
//

#import "Car.h"

@implementation Car
    
-(void)drive{
 if (self.driver.hasValidLicense){
  self.distance += (10 * self.driver.rightFootPosition);
 }
}

@end

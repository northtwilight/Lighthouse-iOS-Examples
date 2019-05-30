//
//  Car.m
//  w1d4-lecture-jan7
//
//  Created by David Mills on 2019-01-10.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)driveCar {
  self.gasPedal = [self.delegate rightFootPosition];
}

- (void)unlockTruck {
    
}
@end

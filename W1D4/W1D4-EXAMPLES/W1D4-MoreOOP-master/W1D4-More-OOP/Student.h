//
//  Student.h
//  W1D4-More-OOP
//
//  Created by Daniel Mathews on 2018-08-02.
//  Copyright © 2018 Daniel Mathews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarDriver.h"

@interface Student : NSObject <CarDriver>

- (BOOL)hasValidLicense;

- (float)rightFootPosition;

@end

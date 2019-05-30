//
//  Teacher.m
//  w1d4-lecture-jan7
//
//  Created by David Mills on 2019-01-10.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (float)rightFootPosition {
  return 1.0;
}

- (void)amEligible:(int)licenseClass {
    
    NSLog(@"I have a Class %i license", licenseClass);
    if (licenseClass <= 3){
        NSLog(@"YA MAN I CAN DRRRRRIVVVE");
    } else {
        NSLog(@"NO I CANNNNN'T");
    }
    
}
@end

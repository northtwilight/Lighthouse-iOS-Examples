//
//  main.m
//  Protocols
//
//  Created by David Mills on 2019-01-10.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Teacher.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // insert code here...
    Car *tesla = [Car new];
    Teacher *tim = [Teacher new];
    Student *juan = [Student new];

    tesla.delegate = tim;
    [tesla driveCar];
    NSLog(@"Gas pedal is at %.1f", tesla.gasPedal);

    tesla.delegate = juan;
    [tesla driveCar];
    NSLog(@"Gas pedal is at %.1f", tesla.gasPedal);
      
    tesla.semiDelegate = tim;
    int licenseClass = 2;
    [tesla driveCar];
    [tim amEligible:2];
      
      
  }
  return 0;
}

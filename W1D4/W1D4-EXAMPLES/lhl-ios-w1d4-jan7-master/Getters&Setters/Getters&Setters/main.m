//
//  main.m
//  Getters&Setters
//
//  Created by David Mills on 2019-01-10.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // insert code here...
    Person *dave = [[Person alloc] init];

    // These two lines do the same thing
    dave.name = @"David";
    [dave setName:@"David"];

    // These two lines also do the same thing
    NSLog(@"Person's name is: %@", dave.name);
    NSLog(@"Person's name is: %@", [dave name]);
  }
  return 0;
}

//
//  Person.m
//  PetsInGeneral
//
//  Created by Sam Meech-Ward on 2019-01-10.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)playWithPet {
  NSLog(@"Playing with pet");
  [self.pet doTrick];
}

@end

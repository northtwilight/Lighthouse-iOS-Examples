//
//  main.m
//  PetsInGeneral
//
//  Created by Sam Meech-Ward on 2019-01-10.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Turtle.h"
#import "Person.h"
#import "Albatross.h"
#import "Robot.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    Person *peter = [[Person alloc] init];
//    Dog *bean = [[Dog alloc] init];
//    Turtle *shelly = [[Turtle alloc] init];
//    Pet *al = [[Albatross alloc] init];
    Robot *rob = [[Robot alloc] init];
    
    peter.pet = rob;
    
    [peter playWithPet];
  }
  return 0;
}

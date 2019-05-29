//
//  main.m
//  W1D3-CustomInits
//
//  Created by Massimo Savino on 2019-05-28.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mammal.h"
#import "Dog.h"
#import "Cat.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *charlie = @"Charlie";
        int chuckSpeed = 3;
        
        Mammal *charlieTheMonkey = [[Mammal alloc] initWithName:charlie andSpeed:chuckSpeed];
        [charlieTheMonkey runWild];
        
        
        NSString *jack = @"Jack!";
        int jackSpeed = 5;
        
        Dog *jackTheTerrier = [[Dog alloc] initWithName:jack andSpeed: jackSpeed];
        [jackTheTerrier runWild];
        
        NSString *josie = @"Josie Kitty";
        int josieSpeed = 4;
        
        Cat *josieThePersian = [[Cat alloc] initWithName:josie andSpeed:josieSpeed];
        [josieThePersian runWild];
        [josieThePersian sneakAround];
    }
    return 0;
}

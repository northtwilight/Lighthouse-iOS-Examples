//
//  Cat.m
//  W1D3-CustomInits
//
//  Created by Massimo Savino on 2019-05-29.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Mammal.h"
#import "Cat.h"

@implementation Cat

- (instancetype) init{
    self = [super init];
    return self;
}
- (instancetype) initWithName: (NSString *)name andSpeed: (int)speed {
    self = [super init];
    if (self) {
        self.name = name;
        self.speed = speed;
        self.sneakSpeed = self.speed - 2;
    }
    return self;
}

- (void) runWild {
    NSLog(@"I'm %1$@, running around @ %2$i \n", self.name, self.speed);
}
- (void) sneakAround {
    NSLog(@"Hi, I'm %1$@ the cat, sneaking @ %2$i", self.name, self.sneakSpeed);
}

@end

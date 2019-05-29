//
//  Dog.m
//  W1D3-CustomInits
//
//  Created by Massimo Savino on 2019-05-28.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mammal.h"
#import "Dog.h"

@implementation Dog

- (instancetype) init {
    self = [super init];
    return self;
}

- (instancetype) initWithName:(NSString *)name andSpeed:(int)speed {
    self = [super init];
    if (self) {
        self.name = name;
        self.speed = speed;
        self.houndSpeed = self.speed + 6;
    }
    return self;
}

- (void) runWild {
    [super runWild];
    NSLog(@"I'm %1$@, RUNNING FLAT OUT \@ %2$i \n", self.name, self.houndSpeed);
}

@end

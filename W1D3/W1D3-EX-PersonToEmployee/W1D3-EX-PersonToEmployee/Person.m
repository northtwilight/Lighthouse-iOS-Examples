//
//  Person.m
//  W1D3-EX-PersonToEmployee
//
//  Created by Massimo Savino on 2019-05-25.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age {
    personName = name;
    personAge = age;
    return self;
}

- (void)print {
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
}

@end

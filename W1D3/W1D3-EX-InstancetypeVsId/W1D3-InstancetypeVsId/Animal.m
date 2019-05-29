//
//  Animal.m
//  W1D3-InstancetypeVsId
//
//  Created by Massimo Savino on 2019-05-26.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"

@implementation Animal

+ (id)giveMeAnimalA {
    return [[[self class] alloc] init];
}

+ (instancetype)giveMeAnimalB {
    return [[[self class] alloc] init];
}

+ (Animal *)giveMeAnimalC {
    return [[[self class] alloc] init];
}
@end

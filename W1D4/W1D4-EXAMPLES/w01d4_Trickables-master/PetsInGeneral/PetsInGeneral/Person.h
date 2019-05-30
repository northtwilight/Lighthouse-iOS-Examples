//
//  Person.h
//  PetsInGeneral
//
//  Created by Sam Meech-Ward on 2019-01-10.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Trickable.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic, strong) id<Trickable>pet;

- (void)playWithPet;

@end

NS_ASSUME_NONNULL_END

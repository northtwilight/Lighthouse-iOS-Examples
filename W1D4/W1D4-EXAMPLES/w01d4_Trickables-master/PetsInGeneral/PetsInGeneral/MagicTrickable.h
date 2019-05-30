//
//  MagicTrickable.h
//  PetsInGeneral
//
//  Created by Sam Meech-Ward on 2019-01-10.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Trickable.h"

NS_ASSUME_NONNULL_BEGIN

@protocol MagicTrickable <NSObject, Trickable>

- (void)doMagic;

@end

NS_ASSUME_NONNULL_END

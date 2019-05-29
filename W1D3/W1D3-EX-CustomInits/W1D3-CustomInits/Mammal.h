//
//  Mammal.h
//  W1D3-CustomInits
//
//  Created by Massimo Savino on 2019-05-28.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#ifndef Mammal_h
#define Mammal_h

#endif /* Mammal_h */

@interface Mammal : NSObject

@property (nonatomic, strong) NSString *name;
@property int speed;

- (instancetype) init;
- (instancetype) initWithName: (NSString *)name andSpeed: (int)speed;
- (void) runWild;
@end

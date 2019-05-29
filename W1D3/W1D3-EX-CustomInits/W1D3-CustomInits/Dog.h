//
//  Dog.h
//  W1D3-CustomInits
//
//  Created by Massimo Savino on 2019-05-28.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#ifndef Dog_h
#define Dog_h

#endif /* Dog_h */

@interface Dog : Mammal

@property int houndSpeed;

- (instancetype) init;
- (instancetype) initWithName: (NSString *)name andSpeed: (int)speed;

- (void) runWild;

@end

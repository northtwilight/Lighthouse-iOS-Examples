//
//  Cat.h
//  W1D3-CustomInits
//
//  Created by Massimo Savino on 2019-05-29.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#ifndef Cat_h
#define Cat_h

#endif /* Cat_h */

@interface Cat : Mammal

@property int sneakSpeed;

- (instancetype) init;
- (instancetype) initWithName: (NSString *)name andSpeed: (int)speed;

- (void) runWild;
- (void) sneakAround;
@end

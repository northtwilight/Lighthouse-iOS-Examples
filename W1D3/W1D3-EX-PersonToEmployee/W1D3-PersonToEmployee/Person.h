//
//  Person.h
//  W1D3-EX-PersonToEmployee
//
//  Created by Massimo Savino on 2019-05-25.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#ifndef Person_h
#define Person_h

#endif /* Person_h */

@interface Person : NSObject {
    NSString *personName;
    NSInteger personAge;
}

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age;
- (void)print;

@end

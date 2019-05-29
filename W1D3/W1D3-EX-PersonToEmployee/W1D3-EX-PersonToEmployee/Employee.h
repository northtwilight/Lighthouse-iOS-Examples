//
//  Employee.h
//  W1D3-EX-PersonToEmployee
//
//  Created by Massimo Savino on 2019-05-25.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

// Added by Xcode:
// #ifndef :    Returns true if this macro is not defined
//              If "My header doesn't exist yet" ie this is the first time, then...
// #define:     ... Go ahead and define it now.
// #endif

#ifndef Employee_h
#define Employee_h

#endif /* Employee_h */

@interface Employee : Person {
    NSString *employeeEducation;
}

- (instancetype)initWithName:(NSString *)name andAge:(NSInteger)age andEducation:(NSString *)education;
- (void)print;

@end

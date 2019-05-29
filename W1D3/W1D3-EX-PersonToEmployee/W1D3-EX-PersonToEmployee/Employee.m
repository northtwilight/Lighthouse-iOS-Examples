//
//  Employee.m
//  W1D3-EX-PersonToEmployee
//
//  Created by Massimo Savino on 2019-05-25.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"

@implementation Employee
- (instancetype)initWithName: (NSString *)name andAge:(NSInteger)age andEducation:(NSString *)education {
    self = [super initWithName: name andAge: age];
    self.personName = name;
    self.personAge = age;
    self.employeeEducation = education;
    
    return self;
}

- (void)print {
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
    NSLog(@"Education: %@", employeeEducation);
}

@end

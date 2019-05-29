//
//  main.m
//  W1D3-EX-PersonToEmployee
//
//  Created by Massimo Savino on 2019-05-25.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

// Presentation available at
// https://docs.google.com/presentation/d/1CEX0j45qSXXzQZSW2X-NlNzk-41w8mLfdseACS4Nsro/edit?usp=sharing

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Base Person class:\n");
        Person *jane = [[Person alloc] initWithName:@"Jane" andAge:24];
        [jane print];
        
        NSLog(@"Inherited Employee class:\n");
        Employee *alice = [[Employee alloc] initWithName:@"Alice" andAge:29 andEducation:@"MBA"];
        [alice print];
        
    }
    return 0;
}




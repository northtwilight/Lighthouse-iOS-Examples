//
//  main.m
//  W1D4-OverridingGettersAndSetters
//
//  Created by Massimo Savino on 2019-05-29.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Comedian.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Comedian *kingOfComedy = [[Comedian alloc] init];
        kingOfComedy.fullName = @"Jerry Langford";
        
        [kingOfComedy printPromo:kingOfComedy.fullName];
        
        kingOfComedy.fullName = @"Rupert Pupkin";
        
        [kingOfComedy printPromo:kingOfComedy.fullName];
        
    }
    return 0;
}

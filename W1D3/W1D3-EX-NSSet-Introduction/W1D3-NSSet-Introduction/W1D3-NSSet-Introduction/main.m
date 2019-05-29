//
//  main.m
//  W1D3-NSSet-Introduction
//
//  Created by Massimo Savino on 2019-05-28.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SandwichInspector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Prep & setup
        
        NSArray *teamSandwichList = @[@"chicken",
                                        @"club",
                                        @"tomato",
                                        @"club",
                                        @"egg salad",
                                        @"vegan cheddar",
                                        @"Philly cheesesteak",
                                        @"garden salad",
                                        @"egg salad",
                                        @"tomato",
                                        @"vegan cheddar",
                                        @"Branston pickle"
                                        ];
        
        NSArray *lastMinuteAdditions = @[@"Branston pickle",
                                         @"vegan cheddar",
                                         @"chicken salad",
                                         @"falafel",
                                         @"club",
                                         @"breakfast",
                                         @"falafel",
                                         @"Marmite",
                                         @"peanut butter",
                                         @"peanut butter",
                                         @"fried iguana"
                                         ];

        // Make a new set by grafting the additional kinds onto the original kinds
        
        // Create a new sandwich inspector
        
        SandwichInspector *sarnyLookyloo = [[SandwichInspector alloc] init];
        
        // Sandwich inspector: creates temporary working sets of the lists of sandwiches and updated sandwiches
        
        NSSet *sandwiches = [sarnyLookyloo convertFromArray:teamSandwichList];
        
        
        
        
        
        /**
        NSSet *updates = [sarnyLookyloo convertFromArray:lastMinuteAdditions];
        
        // Sandwich inspector: merges sets into a new final set of unique sandwiches
        
        NSSet *finalListOfKinds = [sarnyLookyloo mergeFirstSet:sandwiches withSecondSet:updates];
        
        // Ask the inspector to show us the final set of sandwich kinds.
        
        [sarnyLookyloo showMeLineByLine:finalListOfKinds];
        
        [sarnyLookyloo printBreak];
        
        NSMutableSet *changingListOfKinds = [[NSMutableSet alloc] initWithSet:finalListOfKinds];
        
        [changingListOfKinds addObject:@"Reuben"];
        [changingListOfKinds removeObject:@"Branston pickle"];
        [changingListOfKinds removeObject:@"fried iguana"];
        
        [sarnyLookyloo showMeLineByLine:changingListOfKinds];
        [sarnyLookyloo printBreak];
        
        NSSet *mixedTypes = [[NSSet alloc] initWithObjects:@"AA", @"BB", [NSNumber numberWithInt:23], [NSString stringWithFormat:@"AA"], [NSNull null], [NSNumber numberWithFloat:3.1415], nil];
        
        [sarnyLookyloo showMeLineByLine:mixedTypes];
        */

    }
    return 0;
}

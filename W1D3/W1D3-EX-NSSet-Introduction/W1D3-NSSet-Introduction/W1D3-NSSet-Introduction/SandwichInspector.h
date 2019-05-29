//
//  SandwichInspector.h
//  W1D3-NSSet-Introduction
//
//  Created by Massimo Savino on 2019-05-28.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SandwichInspector : NSObject

- (void) printBreak;
- (NSSet *) convertFromArray: (NSArray *)inputArray;
- (NSSet *) mergeFirstSet: (NSSet *)firstSet withSecondSet: (NSSet *)secondSet;
- (void) showMeLineByLine: (NSSet *)set;

@end

@implementation SandwichInspector

- (void) printBreak {
    NSLog(@"  = = = = =  ");
}

- (NSSet *) convertFromArray: (NSArray *)inputArray {
    
    NSSet *kinds = [[NSSet alloc] initWithArray:inputArray];
    return kinds;
}

- (NSSet *) mergeFirstSet: (NSSet *)firstSet withSecondSet: (NSSet *)secondSet {
    
    NSSet *newSet = [firstSet setByAddingObjectsFromSet:secondSet];
    return newSet;
}

- (void) showMeLineByLine:(NSSet *)set {
    
    NSEnumerator *enumeratoratering = [set objectEnumerator];
    id obj;
    
    NSLog(@"The kinds of things I found: \n\n");
    
    while (obj = [enumeratoratering nextObject]) {
        NSLog(@"%@", obj);
    }
}

@end

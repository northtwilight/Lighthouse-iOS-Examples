//
//  Comedian.m
//  W1D4-OverridingGettersAndSetters
//
//  Created by Massimo Savino on 2019-05-29.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Comedian.h"

@implementation Comedian {
    NSString *_fullName;
    NSString *_status;
    
}

- (instancetype) init {
    self = [super init];
    return self;
}

- (NSString *)fullName {         /// <-- You can insert validation code here before your return of the
                                 /// @synthesized instance variable (or ivar), as shown with an
    return _fullName;            /// underscore before the name -->    _fullName in this case
    
}

- (void) setFullName: (NSString *)newValue {        // You can also enter filtering code when you
                                                    // override the setter (write-out) method
    // Add ScrewYouRupert check
    if (![newValue isEqual: @"Rupert Pupkin"]) {
        _fullName = newValue;
    }
    _fullName = newValue;
}

- (void) printPromo: (NSString *)comedianName {
    NSLog(@"Our very own king of comedy, %@", comedianName);
}

@end










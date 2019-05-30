//
//  Comedian.h
//  W1D4-OverridingGettersAndSetters
//
//  Created by Massimo Savino on 2019-05-29.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#ifndef Comedian_h
#define Comedian_h

#endif /* Comedian_h */


@interface Comedian : NSObject

@property NSString *fullName;
@property (nonatomic, strong) NSString *status;

- (void)printPromo: (NSString *)comedianName;

@end

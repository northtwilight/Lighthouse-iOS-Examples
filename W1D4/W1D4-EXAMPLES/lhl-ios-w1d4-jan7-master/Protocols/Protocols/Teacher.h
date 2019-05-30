//
//  Teacher.h
//  w1d4-lecture-jan7
//
//  Created by David Mills on 2019-01-10.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

NS_ASSUME_NONNULL_BEGIN

@interface Teacher : NSObject <CarDriver, SemiDriver>

- (void)amEligible:(int)licenseClass;
@end

NS_ASSUME_NONNULL_END

//
//  Car.h
//  w1d4-lecture-jan7
//
//  Created by David Mills on 2019-01-10.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CarDriver

- (float)rightFootPosition;

@end

@protocol SemiDriver

- (void)amEligible:(int)licenseClass;

@end

@interface Car : NSObject

@property (assign, nonatomic) float gasPedal;
@property (weak, nonatomic) id<CarDriver> delegate;
@property (weak, nonatomic) id<SemiDriver> semiDelegate;

- (void)driveCar;

@end

NS_ASSUME_NONNULL_END

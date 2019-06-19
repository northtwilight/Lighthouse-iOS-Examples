//
//  ParkBuilder.h
//  W3D2-LTVTableaux
//
//  Created by Massimo Savino on 2019-06-12.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#ifndef ParkBuilder_h
#define ParkBuilder_h

#endif /* ParkBuilder_h */

#import <Foundation/Foundation.h>
#import "NationalPark.h"

@interface ParkBuilder : NSObject

- (NationalPark *) buildParkWithName: (NSString *)name andNickname: (NSString *)nickname Location: (NSString *)location andYear: (NSInteger)establishedYear forArea:(double)area andImage: (UIImage *)photo fromRegion:(NSString *)naturalRegion andText:(NSString *)description andReserveStatus:(BOOL)isReserve;

@end

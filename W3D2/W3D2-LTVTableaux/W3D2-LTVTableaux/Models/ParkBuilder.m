//
//  ParkBuilder.m
//  W3D2-LTVTableaux
//
//  Created by Massimo Savino on 2019-06-12.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ParkBuilder.h"

@implementation ParkBuilder

- (instancetype) init {
    
    if (!self) {
        self = [super init];
    }
    return self;
}

- (NationalPark *) buildParkWithName: (NSString *)name andNickname: (NSString *)nickname Location: (NSString *)location andYear: (NSInteger)establishedYear forArea:(double)area andImage: (UIImage *)photo fromRegion:(NSString *)naturalRegion andText:(NSString *)description andReserveStatus:(BOOL)isReserve {
    
    NationalPark *nationalParkInstance = [[NationalPark alloc] initWithName:name andNickname:nickname andLocation:location establishedYear:establishedYear withArea:area andPhoto:photo andNaturalRegion:naturalRegion andDescription:description andIsReserve:isReserve];
    
    return nationalParkInstance;
}

@end

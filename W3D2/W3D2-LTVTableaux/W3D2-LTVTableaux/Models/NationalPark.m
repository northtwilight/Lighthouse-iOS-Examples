//
//  NationalPark.m
//  W3D2-LTVTableaux
//
//  Created by Massimo Savino on 2019-06-11.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "NationalPark.h"

@implementation NationalPark

- (instancetype) initWithName: (NSString *)name
                  andNickname: (NSString *)nickname
                  andLocation: (NSString *)location
              establishedYear: (NSInteger)establishedYear
                     withArea: (double)area
                     andPhoto: (UIImage *)photo
             andNaturalRegion: (NSString *)naturalRegion
               andDescription: (NSString *)description
                 andIsReserve: (BOOL)reserve {
    
    self = [super init];
    
    if (self) {
        self.name = name;
        self.nickname = nickname;
        self.location = location;
        self.establishedYear = establishedYear;
        self.area = area;
        self.photo = photo;
        self.naturalRegion = naturalRegion;
        self.description = description;
        self.isReserve = YES;
    }
    return self;
}

@end

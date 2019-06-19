//
//  NationalPark.h
//  W3D2-LTVTableaux
//
//  Created by Massimo Savino on 2019-06-11.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// Sourced from https://en.wikipedia.org/wiki/List_of_National_Parks_of_Canada

@interface NationalPark : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *nickname;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, assign) NSInteger establishedYear;
@property (nonatomic, assign) double area;
@property (nonatomic, strong) UIImage *photo;
@property (nonatomic, strong) NSString *naturalRegion;
@property (nonatomic, strong) NSString *description;
@property (nonatomic, assign) BOOL isReserve;

- (instancetype) initWithName: (NSString *)name
                  andNickname: (NSString *)nickname
                  andLocation: (NSString *)location
              establishedYear: (NSInteger)establishedYear
                     withArea: (double)area
                     andPhoto: (UIImage *)photo
             andNaturalRegion: (NSString *)naturalRegion
               andDescription: (NSString *)description
                 andIsReserve: (BOOL)reserve;


@end

NS_ASSUME_NONNULL_END

//
//  Artist.h
//  RandomArtists
//
//  Created by steve on 2018-08-06.
//  Copyright © 2018 steve. All rights reserved.
//

@import UIKit;

@interface Artist : NSObject
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *name;
- (instancetype)initWithImage:(UIImage *)image name:(NSString *)name;
@end

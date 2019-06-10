//
//  Artist.m
//  RandomArtists
//
//  Created by steve on 2018-08-06.
//  Copyright © 2018 steve. All rights reserved.
//

#import "Artist.h"

@implementation Artist
- (instancetype)initWithImage:(UIImage *)image name:(NSString *)name {
  if (self = [super init]) {
    _image = image;
    _name = name;
  }
  return self;
}

@end

//
//  ArtistManager.m
//  RandomArtists
//
//  Created by steve on 2018-08-06.
//  Copyright © 2018 steve. All rights reserved.
//

#import "ArtistManager.h"
#import "Artist.h"

@interface ArtistManager()
@property (nonatomic, strong) NSArray<Artist*> *artists;
@property (nonatomic, assign) NSInteger index;
@end

@implementation ArtistManager

- (instancetype)init {
  if (self = [super init]) {
    [self createArtists];
    _index = 0;
  }
  return self;
}

- (void)createArtists {
  Artist *a1 = [[Artist alloc] initWithImage:[UIImage imageNamed:@"iggy_p.jpeg"] name:@"Iggy Pop"];
  Artist *a2 = [[Artist alloc] initWithImage:[UIImage imageNamed:@"justin_b.jpeg"] name:@"Justin Bieber"];
  Artist *a3 = [[Artist alloc] initWithImage:[UIImage imageNamed:@"taylor_s.jpeg"] name:@"Taylor Swift"];
  self.artists = @[a1, a2, a3];
}

- (Artist *)randomArtist {
  [self randizeIndex];
  return self.artists[self.index];
}

- (void)randizeIndex {
  NSInteger rand = arc4random_uniform((uint32_t)self.artists.count);
  if (rand == self.index) {
    [self randizeIndex];
  } else {
    self.index = rand;
  }
}

@end

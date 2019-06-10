//
//  ArtistManager.h
//  RandomArtists
//
//  Created by steve on 2018-08-06.
//  Copyright © 2018 steve. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Artist;

@interface ArtistManager : NSObject
- (Artist *)randomArtist;
@end

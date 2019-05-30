//
//  main.m
//  Movies
//
//  Created by Sam Meech-Ward on 2019-01-10.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Movie.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    NSMutableString *title = [NSMutableString stringWithString:@"Star Wars"];
    
    Movie *myAwesomeHarryPotterMovieYo = [[Movie alloc] initWithRunningTime:98 andTitle:title];
    myAwesomeHarryPotterMovieYo.producer = @"Sylvia Gorgonstein";
    
    [myAwesomeHarryPotterMovieYo producer]; // Getter
    [myAwesomeHarryPotterMovieYo setProducer:@"David Finchington"]; // Setter
    
    [title appendString:@"💩"];
    
//    myAwesomeHarryPotterMovieYo.runningTime = 5;
    NSLog(@"running time: %i, producer %@, title: %@", myAwesomeHarryPotterMovieYo.runningTime, myAwesomeHarryPotterMovieYo.producer, myAwesomeHarryPotterMovieYo.title);
  }
  return 0;
}

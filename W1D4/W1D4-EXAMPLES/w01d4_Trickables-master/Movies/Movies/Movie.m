//
//  Movie.m
//  Movies
//
//  Created by Sam Meech-Ward on 2019-01-10.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import "Movie.h"

@implementation Movie {
  int _runningTime;
  NSString *_producer;
}

- (instancetype)initWithRunningTime:(int)runningTime andTitle:(NSString *)title {
  self = [super init];
  if (self) {
    _runningTime = runningTime;
    _title = [title copy];
  }
  return self;
}

- (void)changeRunningTime:(int)time {
  _runningTime = time;
}

- (NSString *)producer {
  return _producer;
}
- (int)runningTime {
  return _runningTime;
}

- (void)setProducer:(NSString *)producer {
  _producer = producer;
}

@end

//
//  Counter.m
//  KVO
//
//  Created by David Mills on 2019-05-09.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "Counter.h"

@interface Counter()

@property (nonatomic) NSInteger count;

@end

@implementation Counter

- (instancetype)init {
  if (self = [super init]) {
    _count = 0;
  }

  return self;
}

- (void)add {
  self.count += 1;
}

- (void)remove {
  self.count -= 1;
}

@end

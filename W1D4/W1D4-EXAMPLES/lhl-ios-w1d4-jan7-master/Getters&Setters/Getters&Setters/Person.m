//
//  Person.m
//  w1d4-lecture-jan7
//
//  Created by David Mills on 2019-01-10.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name = _name;

- (NSString *)name {
  return _name;
}

- (void)setName:(NSString *)name {
  _name = name;
}

@end

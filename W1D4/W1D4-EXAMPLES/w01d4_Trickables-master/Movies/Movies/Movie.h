//
//  Movie.h
//  Movies
//
//  Created by Sam Meech-Ward on 2019-01-10.
//  Copyright © 2019 meech-ward. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Movie : NSObject 

- (instancetype)initWithRunningTime:(int)runningTime andTitle:(NSString *)title;

//@property (assign, nonatomic, readonly) int runningTime;
//@property (strong, nonatomic, readwrite) NSString *producer;

@property (nonatomic, readonly) NSString *title;

- (void)setProducer:(NSString *)producer;
- (int)runningTime;
- (NSString *)producer;

@end

NS_ASSUME_NONNULL_END

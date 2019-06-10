//
//  Counter.h
//  KVO
//
//  Created by David Mills on 2019-05-09.
//  Copyright © 2019 David Mills. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Counter : NSObject

@property (readonly, nonatomic) NSInteger count;

- (void)add;
- (void)remove;

@end

NS_ASSUME_NONNULL_END

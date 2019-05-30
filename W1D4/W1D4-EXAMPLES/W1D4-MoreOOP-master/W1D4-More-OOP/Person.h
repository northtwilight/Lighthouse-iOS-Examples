//
//  Person.h
//  W1D4-More-OOP
//
//  Created by Daniel Mathews on 2018-08-02.
//  Copyright © 2018 Daniel Mathews. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong, getter=getName) NSString *name;


@end


//// Person.h
//
//- (NSString *)name;                // Getter
//- (void)setName:(NSString *)name;  // Setter
//
//
//// Person.m
//
//@implementation Person {
//    NSString *_name;               // ivar
//}
//
//- (NSString *)name {               // Getter
//    return _name;
//}
//- (void)setName:(NSString *)name { // Setter
//    _name = name;
//}

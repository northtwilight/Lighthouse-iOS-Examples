//
//  main.m
//  W1D4-More-OOP
//
//  Created by Daniel Mathews on 2018-08-02.
//  Copyright © 2018 Daniel Mathews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
#import "Teacher.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDictionary *dict = 
        
        // insert code here...
//        Person *dan = [[Person alloc] init];
        
//        dan.name = @"Dan";
//        [dan setName:@"Dan"];
//        
//        NSString *whatIsTheName = dan.name;
//        NSString *whatIsTheName2 = [dan name];
        
        Car *tesla = [[Car alloc] init];
        Teacher *sam = [[Teacher alloc] init];
        
        tesla.driver = sam;
        [tesla drive];
        
        NSLog(@"my car's distance is %f", tesla.distance);

        
        Car *ferrari = [[Car alloc] init];
        Student *dan = [[Student alloc] init];
        
        ferrari.driver = dan;
        [ferrari drive];
        
        NSLog(@"my car's distance is %f", ferrari.distance);
        
        
        NSMutableDictionary *roles = [@{
                                @"director" : @"J.J. Abrams",
                                  @"title" : @"Star Wars 7",
                                  @"actors" : @[ @"M. Hamil", @"C. Fisher" ]
                                  } mutableCopy]; // dictionary literal


        NSString *title = [roles objectForKey:@"title"];
        NSString *otherWayToGettitle = roles[@"title"];
        
        [roles setObject:@"location" forKey:@"Space"];
        roles[@"location"] = @"Space";
        
//        NSArray *numbers = @[@1, @2, @4];
//        numbers[0];
//        [numbers objectAtIndex:0];

        
        
        
    }
    return 0;
}

//
//  main.m
//  W1D3-OOP-Inheritance
//
//  Created by Massimo Savino on 2019-05-28.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Restaurant.h"
#import "AsianRestaurant.h"
#import "IndonesianRestaurant.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // OG Restaurant
        
        Restaurant *joesDiner = [[Restaurant alloc] init];
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        NSArray *joesMenu = [[NSArray alloc] initWithObjects:   @"Hamburger and fries",
                                                                @"Fish and chips",
                                                                @"Chicken pot pie",
                                                                @"Fried eggs",
                             nil];
    
        [joesDiner printsMenuFromCookbook:joesMenu];
        
        
        // Second generation : Asian Restaurant
        
        NSArray *shenzhenMenu = [[NSArray alloc] initWithObjects:@"Won tons",
                                                                  @"Mapodofu",
                                                                  @"Sweet and sour rice",
                                                                  @"Boiled dumplings", nil];
        
        AsianRestaurant *shenzhenSpecial = [[AsianRestaurant alloc] initWithMenu:shenzhenMenu];
        
        shenzhenSpecial.hasVeganMenu = true;
        
        [shenzhenSpecial printsMenuFromCookbook:shenzhenMenu];
        
        
        // Third generation : Indonesian Restaurant
        
        NSArray *jakartaMenu = [[NSArray alloc] initWithArray: @[@"Burgo (pancake)",
                                                                 @"Bebek goreng",
                                                                 @"Nasi padang"
                                                                 ]];
        
        IndonesianRestaurant *jakartaBeaches = [[IndonesianRestaurant alloc] initWithMenu:jakartaMenu];
        
        [jakartaBeaches printsMenuFromCookbook:jakartaMenu];                        // Why doesn't this work?
        
        NSLog(@"\n\n\t\t\t\t\t\tWhat's the menu again?");
        
        [jakartaBeaches printsMenuFromCookbook:[jakartaBeaches menu]];
    }
    return 0;
}

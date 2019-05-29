//
//  main.m
//  scope-exercise
//
//  Created by Massimo Savino on 2019-05-26.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>

static int myVar = 543;
void displayIt(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog (@"myVar = %i", myVar);
        displayIt();
        
    }
    return 0;
}

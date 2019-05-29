//
//  displayIt.m
//  scope-exercise
//
//  Created by Massimo Savino on 2019-05-26.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

#import <Foundation/Foundation.h>

int myVar;

void displayIt() {
    NSLog (@"MyVar from different source file is %i", myVar);
}

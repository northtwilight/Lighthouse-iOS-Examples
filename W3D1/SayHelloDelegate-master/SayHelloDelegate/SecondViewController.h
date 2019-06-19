//
//  SecondViewController.h
//  SayHelloDelegate
//
//  Created by Daniel Mathews on 2015-03-26.
//  Copyright (c) 2015 ca.lighthouselabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@protocol sayHelloDelegate <NSObject>

-(void)sayHelloMethod:(NSString*)text;

@end

@interface SecondViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic) id <sayHelloDelegate> delegate;

@end

# More OOP

## Properties

* They are attached to an object.
* Store some data (state)
* get the data, and set the data
* Any type of data can be stored.

## Property attributes

```objc
@property NSString *name;
@property (nonatomic, strong, readwrite, assign, copy, readonly, weak) NSString *name;
```

* `nonatomic` it doesn't lock the value for multiple threads
* `strong` Creates a strong reference (only for objects)
* `weak` Creates a weak reference
* `copy` A copy is created, then a strong reference is created.
* `readwrite` & `readonly` how the getters and setters are created
* `assign` something to do with primitives. 

* why would you want copy vs strong?
* publicy readonly, privatly readwrite

## Protocols

* Set of rules
* Set of method definitions that a class can conform to.

```objc
@protocol Trickable <NSObject>

- (void)doTrick;

@end
```

## Objects conform to a protocol

```objc
// Robot.h
@interface Robot: NSObject <Trickable>

@end

// Robot.m
@implementation Robot

- (void)doMagic {
  NSLog(@"magic");
}

@end
```

## id

any object

## Delegate (breakout?)

### Using Delegates

### Creating Delegates

## NSDictionary & NSMutableDictionary


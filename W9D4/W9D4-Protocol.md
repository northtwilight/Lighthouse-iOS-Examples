Protocol-Oriented Programming in Swift
======================================

Dave Abrahams' [2015 WWDC video](https://developer.apple.com/videos/play/wwdc2015/408/) is our main source today.

Swift uses / borrows / steals ideas from a number of different programming languages. 

In this, Swift supports a wide variety of paradigms as well, including 

- **object-oriented programming**, 
- some elements of **functional programming**, 
- extensive use of **generics** and generic programming, as well as 
- the older **procedural and structured paradigms** common in older languages such as C.

So that's the broad strokes overview. Let's dig in. 

To do this, we'll have to digress for a minute to talk briefly about *how different object-oriented languages communicate & act*. This is known as **method dispatch**. 

We're lucky here, because we're interested in 3 types (there are others), and Swift covers all three. Moreover, you've been exposed to protocols before in Objective-C, meaning you're already familiar with some of the benefits of using them in general. 

On top of all this, Swift's interoperability with Objective-C means you get to use the latter's version of message dispatch, but use it in Swift, so it'll be easy to write, understand, and maintain. Like you'll be able to look at this code in six months and go, 'Oh I remember how this worked. Don't need to update it either.'

### Types of method dispatch: Swift-specific ++

- **Direct dispatch:** Used by C (imperative language). You can inline function code (ie inject it during compile time), however you can't use subclassing. It's basically immutable code, so it's **fast**.
- **++ Class method dispatch, static dispatch or table dispatch**
- **++ Protocol-based, dynamic dispatch**
- **++ Message dispatch**

#### Class method dispatch *alt.* static dispatch, table dispatch / vtable dispatch

- Most popular form in object-oriented languages, used in JavaScript, Java, Perl, etc, as well as **Swift**.
- Every class has a **virtual table** or *list of pointers to functions* or **vtable** in it.
- In order for the method to work, the class has to be able to see it in the vtable.
- Every subclass has its own copy of the vtable from the parent, plus whatever additional functionality its subclass introduces, tacked onto the bottom. 

The following comes from Ray Wenderlich's [video tutorial](https://www.raywenderlich.com/1258671-advanced-swift-protocol-oriented-programming) on protocol-oriented programming, class dispatch section.


<img src="https://koenig-media.raywenderlich.com/uploads/2017/05/Advanced-Swift-02.png" alt="Class vtable example" width="500"/><p>

#### Protocol-based, dynamic dispatch

- Is the process of selecting which polymorphic method or function to call at runtime --Wikipedia
- **Poly**, meaning, _multiple_, and **-morphic**, meaning _form_ or _shape_ methods - the protocol or contract has its rules, but the particular shape the method displays **will depend on its implementation**
- Every protocol has a **protocol witness table**

#### Message dispatch

- Swift defers **by default** to either of the above, either class method dispatch or dynamic dispatch
- Adding the ObjC keyword `@objc` to your `func` definition enables the full ObjC message passing framework in place -- **you use the Objective-C Runtime engine directly**
- **"The [Objective-C language](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40008048-CH1-SW1) defers as many decisions as it can from compile time and link time to runtime. Whenever possible, it does things dynamically. This means that the language requires not just a compiler, but also a runtime system to execute the compiled code. The runtime system acts as a kind of operating system for the Objective-C language; it’s what makes the language work.**
	--Apple, [Objective-C Runtime Programming Guide](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ObjCRuntimeGuide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40008048-CH1-SW1)
- So: 
  - The Objective-C language
  - The Objective-C runtime engine: "The Objective-C Runtime is [an open source library](https://github.com/opensource-apple/objc4) written in C and Assembler that adds the Object Oriented capabilities to C to create the Objective-C language." 
- With this you are passing messages between objects
- This even enables **method swizzling**, where you get to substitute different methods **at runtime**

### Rethinking your design with protocols gives powerful benefits without the baggage of OOP

- Protocol orientation
- Retroactive modelling

### Some limitations of object-oriented programming in Swift:

Single inheritance - can't inherit from multiple parent classes (unlike Python, which thus has to determine the order in which the compiler will resolve these multiple dependencies)
Inheritances become long and convoluted the farther you get from the original parent class, and becomes worse and less maintainable over time. 

### Protocols address these deficiencies

Protocols are really type blueprints, for custom types that you create. They let you add behaviour through the assembly of different compositions (classes, structs, enums, etc). When combined with generics, Swift becomes a powerful, and flexible programming languages that integrates seamlessly with existing, older frameworks such as Core Data, UIKit and Cocoa/Cocoa Touch more generally.

Retroactive modelling allows us to add behaviour, even to modules where we don't have the original source -- for example, we can easily add methods and functionality to UIViewController or UIButton classes. 

#### Subclassing provides statically-dispatched methods, they cannot be implemented at runtime 

```swift
class DistributionClass {
    func sample() -> Double {
        fatalError("Must override \(#function)")    // implemented as-is crashes the program.
    }												
    
    func sample(count: Int) -> [Double] {
        return (1...count).map { _ in sample() }
    }
}

```

```swift
class UniformDistributionClass: DistributionClass {
    
    var range: ClosedRange<Int>
    
    init(range: ClosedRange<Int>) {
        self.range = range
    }
    
    override func sample() -> Double {			// although this changes the method body,
        return Double(Int.random(in: range))    // the signature remains constant
    }
}
```

To demonstrate this, let's create a 20-sided die and count how many times it generates the number 10:

```swift
let d20 = UniformDistributionClass(range: 1...20)
d20.sample(count: 10)

prints: ie [8, 18, 3, 17, 8, 16, 19, 13, 1, 14]
```

However, if we extend functionality in an extension, its methods are **not** added to the class' vtable, and thus it cannot be customized.

#### Example of subclassing not extending to a vtable

```swift
extension GeometryBaseClass {
    func cannotCustomizePerimeter() -> Double {
        fatalError("Derived class needs to implement this separately")
    }
    
    @objc func perimeter() -> Double {
        fatalError("Derived class needs its own version of this!")
    }
}

class DrawableBaseClass: NSObject {
    @objc func draw() {
        fatalError("Derive this please, don't use this")
    }
}
```


#### Protocols get similar methods, but these *can* be customized

```swift
// dynamic dispatch: can choose the implementation @ runtime

protocol Distribution {
    func sample() -> Double
    func sample(count: Int) -> [Double] // provides a custom implementation point
}

extension Distribution {
    func sample(count: Int) -> [Double] { // provides a default impl pt
        return (1...count).map { _ in sample() }
    }
}

struct UniformDistributionStruct: Distribution {
    var range: ClosedRange<Int>
    
    init(range: ClosedRange<Int>) {
        self.range = range
    }
    func sample() -> Double {
        return Double(Int.random(in: range))
    }
}

let d10 = UniformDistributionStruct(range: 1...10)
d10.sample(count: 100)
```

#### We can customise our protocols with extensions

**We can even extend code where we don't have the source, with retroactive modelling**

Let's start with one protocol.

```swift
protocol RandomNumberGenerator {
    func random() -> Double
}
```

Here's a class that uses `RandomNumberGenerator` as a new, separate type.

```swift
class Dice {
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}
```

Now let's define another protocol, this time to add a string description to things:

```swift
protocol TextRepresentable {
    var textualDescription: String { get }
}
```


We'd like to add this string description to our Dice class. We say that `the Dice class from above can be extended to adopt and conform to TextRepresentable:`

```swift


extension Dice: TextRepresentable {
    var textualDescription: String {
        return "A \(sides)-sided dice"
    }
}
```

Now, any Dice instance can now be treated as TextRepresentable:

```swift
let d12 = Dice(sides: 12, generator: LinearCongruentialGenerator())
print(d12.textualDescription)
```

#### Example from Dave Abrahams, [POP video](https://developer.apple.com/videos/play/wwdc2015/408/) 

See top

```swift
protocol Drawable {
	func draw(renderer: Renderer)
}

protocol Renderer {
	func moveTo(p: CGPoint)
	func lineTo(p: CGPoint)
	func arcAt(center....)
}

struct Circle: Drawable { ... }

struct Polygon: Drawable { ... }

struct Diagram: Drawable {
	var elements: [Drawable]
	func draw(render: Renderer) {
		for e in self.elements {
			e.draw(renderer)
		}
	}
}

// Testing the Renderer protocol

struct TestRenderer: Renderer {
	// Implementations all print the points
}

// Retroactive modelling

extension CGContext: Renderer {
	// Implementations actually perform drawing
}
```

### Resources

Beyond Abrahams' video, you may find these useful:

[Ray Wenderlich Protocol-Oriented Programming, a short 20-minute tutorial series](https://www.raywenderlich.com/1258671-advanced-swift-protocol-oriented-programming/lessons/1)

[Lynda.com / LinkedIn Learning tutorial series](https://www.lynda.com/Swift-tutorials/Swift-4-Protocol-Oriented-Programming/633857-2.html)

[LearnAppMaking.com](https://learnappmaking.com/protocols-swift-how-to/)

[Some GitHub projects using protocol-oriented programming concepts in sample code](https://github.com/topics/protocol-oriented-programming)

The networking layer concept projects are well worth looking into.

[Swift 4 Protocol-Oriented Programming (textbook)](https://www.amazon.ca/Swift-4-Protocol-Oriented-Programming-Third/dp/1788470036)

[Realm Academy video from Natasha Murashev of Natasha the Robot fame](https://academy.realm.io/posts/appbuilders-natasha-muraschev-practical-protocol-oriented-programming/)

[iOSBrain](http://iosbrain.com/blog/2018/03/28/protocol-oriented-programming-in-swift-is-it-better-than-object-oriented-programming/)

[Criticism of POP by Chris Eidhof (of ObjC.io)](http://chris.eidhof.nl/post/protocol-oriented-programming/)

[Pluralsight blog on POP](https://www.pluralsight.com/guides/protocol-oriented-programming-in-swift)

[Objective-C vs Swift message dispatch](https://blog.untitledkingdom.com/objective-c-vs-swift-messages-dispatch-9d5b7fd58327)

[AppCoda Protocols tutorial](https://www.appcoda.com/protocol-oriented-programming/)


[**Playground code** taken from Ray Wenderlich](https://github.com/northtwilight/Lighthouse-iOS-Examples/tree/working) is included in the W9D4 folder off the working branch.


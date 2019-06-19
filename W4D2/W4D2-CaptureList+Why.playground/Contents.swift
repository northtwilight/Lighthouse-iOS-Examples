import UIKit

// Default Variable Capturing

struct Calculator {
    var a: Int
    var b: Int
    
    var sum: Int {
        return a + b
    }
}

// -----------------------

let firstCalculator = Calculator(a: 3, b: 5)

let firstClosure = {
    print("\(#function) : calculator result is \(firstCalculator.sum)")     // Prints out 8
}
firstClosure()



// -----------------------

var abacus = Calculator(a: 4, b: 7) // i.e. Lives at memory address 0x618000220400

let abacusClosure = {
    abacus = Calculator(a: 44, b: 77) // i.e. Lives at memory address 0x610000221be0
}
abacusClosure()



// -----------------------  !!!!!!!!!!

var handClack = Calculator(a: 10, b: 20)

let handClackClosure = {
    print("\(#function) : handClack result is \(handClack.sum)")
}

handClack.b = 432
handClackClosure()              // Prints out __lldb_expr_10 : handClack result is 442 --
                                // would have expected 30, assuming that handClack.b is NOT set
                                // (which is wrong)
                                // HandClack's lifetime is tied with its closure ([unowned self] in its capture list)
                                // Closure lists value after its b property is reset



// -----------------------

var casio = Calculator(a: 9, b: 12)


// This is a capture list |||||||           // And it freezes the setting of casio's calculator properties ( @ line 53 ) to its definition
//                        vvvvvvv           // Runtime alterations are ignored.
                                            // The capture list can take multiple elements set at runtime (think array)
let yetAnotherClosure = { [casio] in
    print("\(#function) : casio result is \(casio.sum)")
}
casio.b = 144

yetAnotherClosure()
























/**

// Change to var

let calculator = Calculator(a: 3, b: 5)

let closure = {
    print("\(#function) : calculator result is \(calculator.sum)")
}

closure()


var abacus = Calculator(a: 4, b: 7) // 0x618000220400

let aClosure = {
    abacus = Calculator(a: 44, b: 77) // 0x610000221be0
}

aClosure()

var handClack = Calculator(a: 10, b: 20)

let anotherClosure = {
    print("\(#function) : handClack result is \(handClack.sum)")
}

handClack.b = 57

anotherClosure()


var casio = Calculator(a: 9, b: 12)


// This is a capture list |||||||
//                        vvvvvvv

let yetAnotherClosure = { [casio] in
    print("\(#function) : casio result is \(casio.sum)")
}

casio.b = 144

yetAnotherClosure()

// It's just another array! The [captureList] keeps an immutable copy of anything stored in it

var variable1 = "StringValueOne"
var variable2 = "SomeMoreString"
var variable3 = "SillyString"

let closureAA = { [variable1, variable2, variable3] in
    print(variable1)
    print(variable2)
    print(variable3)
}


closureAA()


// This won't work


let brokenClosure = { [calculator] in
    calculator = Calculator(a: 1, b: 2) // Throws compile error
    print("The result is \(calculator.sum)")
}

brokenClosure()
*/

import UIKit

// checks for string in array of strings

func existsSpecificString(item: String, inArray: [String]) -> Bool {
    var index: Int = 0
    var found = false
    
    while (index < inArray.count && found == false) {
        if item == inArray[index] {
            found = true
        } else {
            index += 1
        }
    }
    
    if found {
        return true
    } else {
        return false
    }
}

// Find some strings in the array below

let randomStrings = ["unexplained", "Pythagorean", "swizzled methods in Swift", "dedicated beer drinkers", "maternal instincts", "squirrel infestation"]

let firstFoundName = existsSpecificString(item: "unexplained", inArray: randomStrings)
// Returns true

// uh...
let firstMissingName = existsSpecificString(item: "unrequited", inArray: randomStrings)



// Hey, existsSpecificValue looks pretty good. Only problem is, if I want a version to cope with either ints or other types (doubles, floats, custom classes, etc) I basically have to write those other versions. Maintenance becomes a huge problem with this.

// Some hypothetical sample functions:
func existsSpecificInteger(item: Int, inArray: [Int]) -> Bool {  } // etc
func existsSpecificDouble(item: Double, inArray: [Double]) -> Bool { }

// OK, let's try via generics

// This new generic function below, existsSpecificValue, tells you if an item is in its array.

//                     Placeholder: type parameter, item and inArray are the same type.
//                        |
//  <T> : Type parameter  |
//                        |   also <
//                        V
func existsSpecificValue<T: Equatable>(item: T, inArray: [T]) -> Bool {
    
    // The cool part: We **haven't** had to change anything in the body of this revised function!
    
    var index: Int = 0
    var found = false
    
    while (index < inArray.count && found == false) {
        if item == inArray[index] {
            found = true
        } else {
            index += 1
        }
    }
    
    if found {
        return true
    } else {
        return false
    }
}

// Particular / specific types listed, not generics
// ================================================


// Time to test : String array

let someRandomNames: [String] = ["Eleanor", "Catherine", "Samuel", "Daniela", "Maureen", "Joseph", "Hikaru", "Antonio"]

let isAntonioThere = existsSpecificValue(item: "Antonio", inArray: someRandomNames) // true



// Test: Laura in someRandomNames array

let isLauraThere = existsSpecificValue(item: "Laura", inArray: someRandomNames)  // false



// Test in lottery number array

let winningLotteryNumbers = [6, 14, 25, 33, 46, 48, 67, 34, 12, 32, 55, 59]

let heyIFoundOneWinnerAtLeast = existsSpecificValue(item: 14, inArray: winningLotteryNumbers)

let nopeICannotFindThisNumber = existsSpecificValue(item: 1602, inArray: winningLotteryNumbers)



// Test in array of floating point numbers

let myFloatyNumbers: [Float] = [1.0, 2.2, 4.56, 1425.0, 55.67, 887.12, 4.65]

let foundFloat = existsSpecificValue(item: 4.56, inArray: myFloatyNumbers)
let lostFloat = existsSpecificValue(item: 12.443, inArray: myFloatyNumbers)


// Let's modify existsSpecificValue to return the value if found instead of a Boolean.
// In this case like the last one, we don't need to rewrite the method contents, just the method signature (for aesthetics really) and the return type.

func findValue<T: Equatable> (item: T, inArray: [T]) -> Int? {
    var index: Int = 0
    var found = false
    
    while (index < inArray.count && found == false) {
        if item == inArray[index] {
            found = true
        } else {
            index += 1
        }
    }
    
    if found {
        return true
    } else {
        return false
    }
}

// More testing...

let newFriends: [String] = ["John", "Diane", "Rosemary", "Daljit", "Wayne", "Hong", "Francesca", "Matthew", "Sophia"]

let findIndexForJohn = findValue(item: "John", inArray: newFriends)

let findIndexForSophia = findValue((item:"Sophia", inArray: newFriends)

let nilIndexForWalter = findValue(item: "Walter", inArray: newFriends)

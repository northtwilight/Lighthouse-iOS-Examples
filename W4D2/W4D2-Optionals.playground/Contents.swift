import UIKit

// if let ==========

var instructors = ["Cory", "Alan", "Jane"]

var janeIndex = instructors.index(of: "Jane")

if janeIndex != nil {
    print("jane's index is \(janeIndex)")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"),
    firstNumber < secondNumber && secondNumber < 100 {
    
    print("\(firstNumber) < \(secondNumber) < 100")
}

if let janieIndex = janeIndex, let firstOne = instructors.first {
    print("janieIndex: \(janieIndex), first instructor is: \(firstOne)")
}


// guard let =====


func assignStuff() {
    
    instructors.append("Katrina")
    
    guard let first = instructors.first, let last = instructors.last else {
        print("\nCan't assign temporary constants to instructors' member elements")
        return
    }
    print("\n\(#function): first is \(first), last is \(last)")
}

assignStuff()

print(instructors)


// ================

// if var ==========

class MyObject {
    var value: String?
}

let myObject = MyObject()


if let myValue = myObject.value as String? {
    //myValue = "Something else" // <-- Compiler error
    print("\(#function): if I try to change myValue inside here I'll err out")
}

func beginIfVarExample() {
    print()
    
    let someOptionalString: String?
    someOptionalString = "abcd"
    
    if var varString = someOptionalString {         // Basically var is mutated 
        print(varString) //prints abcd
        varString = "efgh"
        print(varString) //prints efgh
        
    } else {
        // print("someOptionalString = \(someOptionalString)")                  // someOptionalString does not exist in this scope, we can't call it
    }
}


beginIfVarExample()








// if let ==========


func findStockCodes(company: String) -> String? {
    print("\(#function) accepting input")
    if company == "Google" {
        return "GOOG"
    } else if company == "Apple" {
        return "AAPL"
    }
    return nil
}

findStockCodes(company: "Google")


    // ===================

var stockCode: String? = findStockCodes(company: "Google")

let text = "Stock Code - "
let message = text + stockCode
print(message)

    // ===================

if let tempStockCode = stockCode {
    
    let textIfLet = "Stock Code - "
    let message = textIfLet + tempStockCode
    print(message)
} else {
    print("Well, that didn't work, stockCode is \(String(describing: stockCode))")
}

// print(textIfLet)























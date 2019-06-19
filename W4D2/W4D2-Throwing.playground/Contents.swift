import UIKit

// Our own defined errors

enum RocketError: Error {
    case insufficientFuel
    case insufficientAstronauts(needed: Int)
    case unknownError
}

// Our original (throwing) function

func igniteRockets(fuel: Int, astronauts: Int) throws {
    if fuel < 1000 {
        throw RocketError.insufficientFuel
    }
    else if astronauts < 3 {
        throw RocketError.insufficientAstronauts(needed: 3)
    }
    
    // Ignite rockets
    print("3... 2... 1... IGNITION!!! LIFTOFF!!!")
}


// If you need the optional quantity at hand definitively set to a value (ie nil is not possible) use do-try-catch.
// Your try keyword is NOT an optional, its throwing of errors is caught by the catch portion.

// Simple do-try-catch format, single error

do {
    try igniteRockets(fuel: 1500, astronauts: 2)
} catch {
    print(error)
}


// Slightly more complex do-try-catch construct, uses customized errors as an enum

do {
    try igniteRockets(fuel: 5000, astronauts: 1)
    
} catch RocketError.insufficientFuel {
    print("The rocket needs more fuel to take off!")
    
} catch RocketError.insufficientAstronauts(let needed) {
    print("You need at least \(needed) astronauts...")
}

// If you don't care about the optional having a value (you're indifferent) you can use the following.

// Note that the try statement below IS AN OPTIONAL, meaning it can be nil.


let maybeIgnite = try? igniteRockets(fuel: 302, astronauts: 2)



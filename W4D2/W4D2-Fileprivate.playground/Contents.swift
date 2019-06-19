import UIKit


// fileprivate example

// A.swift
//class A {
//    fileprivate func someFunction() {
//        print("I will only be called from inside A.swift file")
//    }
//}
//
//
//// viewcontroller.swift
//
//class ViewController : UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let obj = A()
//        // A.someFunction() // error
//    }
//}


// B.swift
class B {
    private var name = "First Letter"
}
extension B {
    func printName(){
        print("I'm inside \(#function),  and here is my var 'name': \(name)") // you may access it here from swift 4. Swift 3 will throw error.
    }
}



B()
B().name // Error even if accessed from outside the class B{} of B.swift file.
B().printName()     // Allows access to print the name because the method itself is allowed to read the private var itself.


import UIKit
import PlaygroundSupport

// class: implied vtable

class DistributionClass {
    func sample() -> Double {
        fatalError("Must override \(#function)")
    }
    
    func sample(count: Int) -> [Double] {
        return (1...count).map { _ in sample() }
    }
}

class UniformDistributionClass: DistributionClass {
    
    var range: ClosedRange<Int>
    
    init(range: ClosedRange<Int>) {
        self.range = range
    }
    
    override func sample() -> Double {
        return Double(Int.random(in: range))
    }
}


let d20 = UniformDistributionClass(range: 1...20)
d20.sample(count: 10)







class GeometryBaseClass {
    func area() -> Double {
        fatalError("Derived geometry classes need their own implementations of this")
    }
}

// will not be added to the class' vtable: it can't be customised
// uses static dispatch
// not a customisation point

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
print(d10.sample(count: 1000).reduce(0) { $0 + ($1 == 10 ? 1 : 0) } )

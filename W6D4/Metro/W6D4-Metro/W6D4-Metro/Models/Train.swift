//
//  Train.swift
//  W6D4-Metro
//
//  Created by Massimo Savino on 2019-07-04.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import Foundation

class Train {
    
    let name: String
    let capacity: Int
    let carriageLimit: Int = 125
    
    init(name: String, capacity: Int) {
        self.name = name
        self.capacity = abs(capacity)
    }
    
    // per day
    var trips = [Trip]()
    
    func add(_ trip: Trip) {
        trips.append(trip)
    }
    
    func carriagesUsed() -> Int {
        return capacity / abs(carriageLimit)
    }
    
}

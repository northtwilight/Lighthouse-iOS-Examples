//
//  Models.swift
//  W4D4-RealmDB
//
//  Created by Massimo Savino on 2019-06-20.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import Foundation
import RealmSwift

class Dog: Object {
    // Optional String, Date, Data properties built in
    @objc dynamic var name: String?
    
    // @objc dynamic var age = 0    // changed to a RealmOptional
    let age = RealmOptional<Int>()
}

class Person: Object {
    @objc dynamic var name = ""
    @objc dynamic var picture: Data? = nil
    
    let dogs = List<Dog>()
}

//
//  RealmService.swift
//  W4D4-RealmDB
//
//  Created by Massimo Savino on 2019-06-20.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import Foundation
import RealmSwift

protocol RealmService {
    func setupRealm(with objects: List<Dog>)
}

extension RealmService {
    
    func setupRealm(with objects: List<Dog> ) {
        
        DispatchQueue.global().async {
            let realm = try! Realm()
            try! realm.write {
                realm.add(objects)
            }
            print("Wrote to realm")
        }
        
    }
}

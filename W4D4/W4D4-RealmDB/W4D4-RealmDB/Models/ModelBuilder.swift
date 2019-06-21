//
//  ModelBuilder.swift
//  W4D4-RealmDB
//
//  Created by Massimo Savino on 2019-06-20.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import Foundation
import RealmSwift

class ModelBuilder: RealmService {
    
    var dogs = [Dog]()
    var people = [Person]()
    
    var dogBatch = ["Woof": 4, "Perky": 3, "Rovah": 6, "Millie": 5, "Hobo": 7, "Hana" : 12, "Brianna" : 6, "Danny Boy" : 2]
    
    // NB: 'applicable conditions here'
    let oldDogPredicate = NSPredicate(format: "age > 3")
    
    // MARK: Create operations
    
    private func createDog(name: String, age: Int? = nil) -> Dog {
        // Use Realm objects like regular Swift objects
        let dog = Dog()
        dog.name = name
        dog.age.value = age
        
        print("name of dog: \(String(describing: dog.name)); \(dog.age) years old")
        return dog
    }
    
    private func createPerson(name: String, picture: UIImage? = nil) -> Person {
        let person = Person()
        person.name = name
        if let image = picture {
            person.picture = image.jpegData(compressionQuality: 1.0)
        }
        return person
    }
    
    func populateRealm() {
        let realm = try! Realm()
        let cassidy = createPerson(name: "Cassidy")
        for item in dogBatch {
            let dog = createDog(name: item.key, age: item.value)
            cassidy.dogs.append(dog)
        }
        let cassDogs = cassidy.dogs
        self.setupRealm(with: cassDogs)
    }
    
    
    // MARK: - Read operations
    
    private func fetchBasicRealm() {
        let realm = try! Realm()
        let results = realm.objects(Person.self)
        
        for person in results {
            print(#function, #line, person.name)
            print(#function, #line, person.dogs.first?.name ?? "Either can't find the first dog or its name")
        }
    }
    
    private func fetchWithFilterVoid() {
        let realm = try! Realm()
        // See let property
        let results = realm.objects(Dog.self).filter(oldDogPredicate)
        
        for dog in results {
            print(#function, #line, dog.name ?? "Dog hasn't had name set yet")
        }
    }
    
    private func fetchWithFilterDog() -> Dog? {
        let realm = try! Realm()
        let results = realm.objects(Dog.self).filter(oldDogPredicate)
        for dog in results {
            print(#function, #line, dog.name ?? "Don't know this dog's name", dog.age.value ?? "Unknown age")
        }
        return results.first
    }
    
    // MARK: - Update operations
    
    private func incrementAge() {
        let realm = try! Realm()
        try! realm.write {
            guard let dog = self.fetchWithFilterDog() else { return }
            dog.age.value = (dog.age.value ?? 0) + 1
        }
    }
    
    
    // Figure this out later.
    /**

    // Write a name changer function
    private func renameHobo() -> Dog? {
        let hPredicate = NSPredicate(format: "name BEGINSWITH[h] $letter")
        let results = realm.objects(Dog.self).filter(hPredicate)
        for dog in results {
            print(dog.name)
        }
        return results.first
    }
      */
    
    // MARK: - Delete operations
    
    private func deleteDog() {
        let realm = try! Realm()
        guard let dog = self.fetchWithFilterDog() else { return }
        try! realm.write {
            realm.delete(dog)
        }

    }
    
    private func deleteEveryPerson() {
        let realm = try! Realm()
        try! realm.write {
            realm.delete(realm.objects(Person.self))
        }
    }
    
    private func deleteAllDogs() {
        let realm = try! Realm()
        try! realm.write {
            
            let results = realm.objects(Dog.self)
            for dog in results {
                realm.delete(dog)
            }
            print("Deleted dog list")
        }
    }
}

extension ModelBuilder {
    func deleteSomething() {
        deleteDog()
        // deleteEveryPerson()
    }
    func incrementFirstDogAge() {
        incrementAge()
    }
    func deletePooches() {
        deleteAllDogs()
    }
}

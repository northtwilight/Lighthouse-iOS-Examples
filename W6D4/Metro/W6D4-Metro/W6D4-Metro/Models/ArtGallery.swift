//
//  ArtGallery.swift
//  W6D4-Metro
//
//  Created by Massimo Savino on 2019-07-04.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import Foundation

final class ArtGallery: NSObject, NSCoding {
    
    // MARK: Properties
    
    internal let name: String
    internal let streetAddress: String
    internal let city: String
    internal let province: String
    
    
    // MARK: Designated Initializer - ie regular init
    
    init(name: String, streetAddress: String, city: String, province: String) {
        self.name = name
        self.streetAddress = streetAddress
        self.city = city
        self.province = province
    }
    
    // MARK: Encoding and Decoding
    
    // Create an internal struct to handle the UD keys' translation
    // Want to firewall off the public properties from their internal setting functions
    
    internal struct Key {
        static let name = "nameKey"
        static let streetAddress = "streetAddressKey"
        static let city = "cityKey"
        static let province = "provinceKey"
    }
    
     // Read from UD
    required convenience init(coder aDecoder: NSCoder) {
        let name = aDecoder.decodeObject(forKey: Key.name) as? String
        let streetAddress = aDecoder.decodeObject(forKey: Key.streetAddress) as? String
        let city = aDecoder.decodeObject(forKey: Key.city) as? String
        let province = aDecoder.decodeObject(forKey: Key.province) as? String
        self.init(name: name ?? "", streetAddress: streetAddress ?? "", city: city ?? "", province: province ?? "")
    }
    
    // Write to UD
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.name, forKey: Key.name)
        aCoder.encode(self.streetAddress, forKey: Key.streetAddress)
        aCoder.encode(self.city, forKey: Key.city)
        aCoder.encode(self.province, forKey: Key.province)
    }
}

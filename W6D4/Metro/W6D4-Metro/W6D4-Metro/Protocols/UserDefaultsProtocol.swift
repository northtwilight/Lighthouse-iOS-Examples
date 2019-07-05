//
//  UserDefaultsProtocol.swift
//  W6D4-Metro
//
//  Created by Massimo Savino on 2019-07-04.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

/**
 
 As per Steve Thompson's notes, creating a UserDefaultsProtocol is really the simplest, most effective option when trying to mock the UserDefaults personal DB.
 
 Alternatively we can instead just subclass UserDefaults to MockUserDefaults (which is still present regardless as a test item)
 
 UserDefaultsProtocol will use two methods from the UserDefaults class only. We can use others present as needed or desired.
 
 In this case we're concerned with a) setting values and b) reading and writing (via encoding and decoding) to the MockUserDefaults DB, and so only use `set(:forKey:)` and `data(forKey:)` for these purposes, together with the inits.
 
 Creating this as a protocol that limns Apple's own class means we can create a faked, artificial object that works like the original, but does not use the original, *actual* data.
 
 Moreover in the protocol extension we won't have to write anything at all, as the Apple implementation already has implementations for these.
 */

import Foundation

protocol UserDefaultsProtocol : class {
    
    func set(_ value: Any?, forKey defaultName: String)
    func data(forKey: String) -> Data?
}

extension UserDefaults : UserDefaultsProtocol { }

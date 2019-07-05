//
//  MockUserDefaults.swift
//  W6D4-MetroTests
//
//  Created by Massimo Savino on 2019-07-04.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import Foundation
@testable import W6D4_Metro

class MockUserDefaults : UserDefaultsProtocol {
    var values: [String : Data] = [:]
    
    // UserDefaultsProtocol conformance
    
    func set(_ value: Any?, forKey defaultName: String) {
        guard let result = value as? Data else { return }
        values[defaultName] = result
    }
    
    func data(forKey: String) -> Data? {
        return values[forKey]
    }
}


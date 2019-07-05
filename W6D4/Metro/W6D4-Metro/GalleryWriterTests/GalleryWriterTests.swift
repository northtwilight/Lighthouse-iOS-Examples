//
//  GalleryWriterTests.swift
//  GalleryWriterTests
//
//  Created by Massimo Savino on 2019-07-05.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import XCTest
@testable import W6D4_Metro

class GalleryWriterTests: XCTestCase {
    let sut = MockUserDefaults()
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: 3. Integration testing & mocking, plus dependency injection (multiple)
    
    func test_writeUserDefaults_ArtGallery() {
        // given
        let nationalGallery = ArtGallery(name: "National Gallery of Canada", streetAddress: "380 Sussex Dr", city: "Ottawa", province: "Ontario")
        
        let galleryData = NSKeyedArchiver.archivedData(withRootObject: nationalGallery)
        let key = "galleryKey"
        
        // when
        sut.set(galleryData, forKey: key)
        let result = sut.values.count
        let expected = 1
        
        // then
        XCTAssertEqual(result, expected, "Mismatch between what UD is (gallery record) and what was written to disk")
    }
    
}

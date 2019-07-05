//
//  W6D4_MetroTests.swift
//  W6D4-MetroTests
//
//  Created by Massimo Savino on 2019-07-04.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import XCTest
@testable import W6D4_Metro

class W6D4_MetroTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // 3 types of tests
    
    // MARK: 1. Return Value tests
    /**      - calling a function returns a value.
             - compare it to an expected value. */
    
    func test_TrainReturns4Carriages() {
        // given
        let choochoo = Train(name: "Choo Choo", capacity: 500)
        
        // when
        let result = choochoo.carriagesUsed()
        let expected = 4
        
        // then
        XCTAssertEqual(result, expected, "I was supposed to see 4 carriages")
    }
    
    func test_TrainAcceptsNegativeCapacityAsPositive() {
        // given
        let thomas = Train(name: "Thomas the Tank Engine", capacity: -500)
        
        // when
        let result = thomas.carriagesUsed()
        let expected = 4
        
        XCTAssertEqual(result, expected, "Negative numbers aren't made absolute?")
        
    }
    
    
    // MARK: 2. State tests
    /*    - We set an initial state (ie name or other property gets set)
          - We change that initial state via a method 
          - We measure the final state, as altered by the method, against what we expect to see.
     */

    func test_TrainAddTrips() {
        
        // initial state: no trips in the array
        
        // given
        let hikari = Train(name: "Shinkansen", capacity: 1000)
        let trip = Trip(duration: 60)
        let secondTrip = Trip(duration: 240)
        
        // when
        hikari.add(trip)
        hikari.add(secondTrip)
        
        let result = hikari.trips.count
        let expected = 2
        
        // then
        
        // post trip state: 2 trips should be in the array
        
        XCTAssertEqual(result, expected, "Shinkansen didn't have 2 trips")
    }
    
}

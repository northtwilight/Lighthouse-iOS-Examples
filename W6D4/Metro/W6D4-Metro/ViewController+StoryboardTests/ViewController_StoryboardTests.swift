//
//  ViewController_StoryboardTests.swift
//  ViewController+StoryboardTests
//
//  Created by Massimo Savino on 2019-07-05.
//  Copyright © 2019 Massimo Savino. All rights reserved.
//

import XCTest
@testable import W6D4_Metro

class ViewController_StoryboardTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_ViewController_TableViewDataSource() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController
        _ = viewController.view // required to 'cement' the view in memory, basically
        
        XCTAssertTrue(viewController.tableView.dataSource === viewController, "Haven't correctly set the table view data source as actually being the view controller")
    }

}

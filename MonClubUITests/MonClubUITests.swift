//
//  MonClubUITests.swift
//  MonClubUITests
//
//  Created by 2Gather Arnaud Verrier on 03/03/2017.
//  Copyright © 2017 Arnaud Verrier. All rights reserved.
//

import XCTest

class MonClubUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        snapshot("portrait")
        XCUIDevice.shared().orientation = .landscapeLeft
        XCUIDevice.shared().orientation = .landscapeLeft
        snapshot("landscape")
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}

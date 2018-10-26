//
//  UITestExampleUITests.swift
//  UITestExampleUITests
//
//  Created by Matias Gualino on 26/10/18.
//  Copyright © 2018 Matias Gualino. All rights reserved.
//

import XCTest

class UITestExampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        let identifiers = UITestExampleIdentifiers()
        
        XCTAssert(identifiers.viewController().exists)
        
        XCTAssert(identifiers.getLabel().exists)
        XCTAssert(identifiers.getButton().exists)
        
        XCTAssert(identifiers.getLabel().label == "Label")
        
        identifiers.getButton().tap()
        
        XCTAssert(identifiers.getLabel().label == "Button Clicked!")
    }
    
}

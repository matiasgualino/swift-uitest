//
//  UITestExampleIdentifiers.swift
//  UITestExampleUITests
//
//  Created by Matias Gualino on 26/10/18.
//  Copyright © 2018 Matias Gualino. All rights reserved.
//

import Foundation
import XCTest

class UITestExampleIdentifiers {
    
    let app: XCUIApplication = XCUIApplication()
    
    func viewController() -> XCUIElement {
        return app.otherElements[ViewController.CONTROLLER_ID]
    }
    
    func getLabel() -> XCUIElement {
        // staticTexts for UILabel
        return app.staticTexts[ViewController.LABEL_ID]
    }
    
    func getButton() -> XCUIElement {
        // buttons for UIButton
        return app.buttons[ViewController.BUTTON_ID]
    }
    
}

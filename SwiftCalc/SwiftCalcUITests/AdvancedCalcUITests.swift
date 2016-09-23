//
//  AdvancedCalcUITests.swift
//  SwiftCalc
//
//  Created by Zach Zeleznick on 9/23/16.
//  Copyright © 2016 zzeleznick. All rights reserved.
//

import XCTest

class AdvancedCalcUITests: SwiftCalcUITests {

    func testDoubleDivide() {
        let app = XCUIApplication()
        UIHelper.pressButtons(app, names: ["7", "/", "2", "="])
        UIHelper.validateStaticText(app, c: "3.5")
    }
    func testDoubleMultiply() {
        let app = XCUIApplication()
        UIHelper.pressButtons(app, names: ["9", "/", "2", "*", "5", "="])
        UIHelper.validateStaticText(app, c: "22.5")
    }
    func testDecimalMultiplication() {
        let app = XCUIApplication()
        UIHelper.pressButtons(app, names: [".", "0", "1", "2", "*", "5", "1", "1", ".", "2", "5", "="])
        UIHelper.validateStaticText(app, c: "6.135")
    }
    
    // MARK: A not so hidden test
}

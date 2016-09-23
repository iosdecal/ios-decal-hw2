//
//  GeneralCalcUITests.swift
//  SwiftCalc
//
//  Created by Zach Zeleznick on 9/23/16.
//  Copyright © 2016 zzeleznick. All rights reserved.
//

import XCTest

class GeneralCalcUITests: SwiftCalcUITests {
    
    func testMaxLength() {
        let app = XCUIApplication()
        UIHelper.pressButtons(app, names: ["1", "2", "3", "4", "5", "6", "7", "8"])
        UIHelper.validateStaticText(app, c: "1234567")
    }
    
    func testInputRecovery() {
        let app = XCUIApplication()
        UIHelper.pressButtons(app, names: ["1", "2", "3", "4", "5", "6", "7", "8", "C"])
        UIHelper.validateStaticText(app, c: "0")
    }
    
    func testNegatives() {
        // MARK: Test negative numbers and neg signs
        let app = XCUIApplication()
        UIHelper.pressButtons(app, names: ["8", "+/-", "+", "7", "="])
        UIHelper.validateStaticText(app, c: "-1")
        UIHelper.pressButtons(app, names: ["-", "2", "="])
        UIHelper.validateStaticText(app, c: "-3")
        UIHelper.pressButtons(app, names: ["-", "8", "+/-", "+/-", "+/-", "="])
        UIHelper.validateStaticText(app, c: "5")
    }
    
    // MARK: A Hidden Test.
}

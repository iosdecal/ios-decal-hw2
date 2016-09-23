//
//  IntermediateCalcUITests.swift
//  SwiftCalc
//
//  Created by Zach Zeleznick on 9/23/16.
//  Copyright © 2016 zzeleznick. All rights reserved.
//

import XCTest
    
class IntermediateCalcUITests: SwiftCalcUITests {

    func testMultiAdd() {
        let app = XCUIApplication()
        UIHelper.pressButtons(app, names: ["1", "2", "+", "3", "4", "+"])
        UIHelper.validateStaticText(app, c: "46")
        UIHelper.pressButtons(app, names: ["5", "4", "+", "9", "="])
        UIHelper.validateStaticText(app, c: "109")
    }
    
    func testMultiSubtract() {
        let app = XCUIApplication()
        UIHelper.pressButtons(app, names: ["0", "-", "7", "0", "-"])
        UIHelper.validateStaticText(app, c: "-70")
        UIHelper.pressButtons(app, names: ["0", "-", "8", "="])
        UIHelper.validateStaticText(app, c: "-78")
    }
    
    func testMixedOperations() {
        let app = XCUIApplication()
        UIHelper.pressButtons(app, names: ["2", "1", "*", "1", "1", "-"])
        UIHelper.validateStaticText(app, c: "231")
        UIHelper.pressButtons(app, names: ["3", "1", "+", "0", "/"])
        UIHelper.validateStaticText(app, c: "200")
    }

    // MARK: A Hidden Test.
}

//
//  BasicCalcUITests.swift
//  SwiftCalc
//
//  Created by Zach Zeleznick on 9/23/16.
//  Copyright © 2016 zzeleznick. All rights reserved.
//

import XCTest

class BasicCalcUITests: SwiftCalcUITests {
    
    func testBasicAdd() {
        let app = XCUIApplication()
        app.buttons["5"].tap()
        app.buttons["+"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        UIHelper.validateStaticText(app, c: "8")
    }
    
    func testBasicSubtract() {
        let app = XCUIApplication()
        app.buttons["8"].tap()
        app.buttons["-"].tap()
        app.buttons["2"].tap()
        app.buttons["="].tap()
        UIHelper.validateStaticText(app, c: "6")
    }
    
    func testBasicMultiply() {
        let app = XCUIApplication()
        app.buttons["4"].tap()
        app.buttons["*"].tap()
        app.buttons["6"].tap()
        app.buttons["="].tap()
        UIHelper.validateStaticText(app, c: "24")
    }
    
    func testBasicDivide() {
        let app = XCUIApplication()
        UIHelper.pressButtons(app, names: ["4", "8", "/", "1", "2", "="])
        UIHelper.validateStaticText(app, c: "4")
    }

}

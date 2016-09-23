//
//  UIHelper.swift
//  SwiftCalc
//
//  Created by Zach Zeleznick on 9/23/16.
//  Copyright © 2016 zzeleznick. All rights reserved.
//

import XCTest

class UIHelper {
    
    class func validateStaticText(_ app: XCUIApplication, c: String) {
        var state = ""
        if let val = app.staticTexts["resultLabel"].label as String! {
            state = val
        }
        XCTAssert(app.staticTexts[c].exists, "Static text '\(c)' not found. Found text '\(state)'")
    }
    class func pressButtons(_ app: XCUIApplication, names: [String]) {
        for name in names {
            app.buttons[name].tap()
        }
    }
    
}

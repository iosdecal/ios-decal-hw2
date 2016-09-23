//
//  Utils.swift
//  SwiftCalc
//
//  Created by Zach Zeleznick on 9/21/16.
//  Copyright © 2016 zzeleznick. All rights reserved.
//

import Foundation

// MARK:  Define any general utilities here

class Helper {
    // MARK: Sample Helper Class
    /*
        Helper.log10(100.0)
        >> Double = 2
    */
    class func log10(x: Double) -> Double {
        return log(x)/log(10.0)
    }
    
}

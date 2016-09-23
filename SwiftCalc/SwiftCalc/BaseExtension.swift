//
//  BaseExtension.swift
//  SwiftCalc
//
//  Created by Zach Zeleznick on 9/21/16.
//  Copyright © 2016 zzeleznick. All rights reserved.
//

import Foundation
import UIKit

extension Double {
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
    struct Number {
        static var formatter = NumberFormatter()
    }
    var scientificStyle: String {
        Number.formatter.numberStyle = .scientific
        Number.formatter.positiveFormat = "0.##E0"
        Number.formatter.exponentSymbol = "e"
        let val =  NSDecimalNumber(decimal: Decimal(self))
        return Number.formatter.string(from: val) ?? description
    }
    
    // TODO: Make the string human readable!
    var prettyOutput: String {
        /* SPECS:
            1. Returns a max of 7 characters (including any decimal point / negative sign).
            2. Do not include any leading zeros or trailing zeros.
            3. Display an integer when the result is an integer of allowable size.
            Optional: Use scientific notation for any values that exceed the character max.
        */
        return "\(self)"
    }
}

// MARK: Enables Colors from Hex Codes
extension UIColor{
    convenience init(rgb: UInt, alphaVal: CGFloat? = 1.0) {
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(alphaVal!)
        )
    }
}



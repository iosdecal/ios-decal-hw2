//
//  ViewExtension.swift
//  SwiftCalc
//
//  Created by Zach Zeleznick on 9/20/16.
//  Copyright © 2016 zzeleznick. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    // MARK: Easily place UI Elements
    func placeUIElement<T: UIView>(_ element: T, frame: CGRect) {
        element.frame = frame
        self.addSubview(element)
    }
    // MARK: Add bottom borders to UILabels
    func addBorder<T: UIView>(_ myInput: T, height: CGFloat? = 1) {
        let border = CALayer()
        border.backgroundColor = UIColor(rgb: 0xCDCDCD).cgColor
        border.frame = CGRect(x:0, y:myInput.frame.size.height-(1.0 + height!),
                              width: myInput.frame.size.width, height: height!)
        myInput.layer.addSublayer(border)
    }
    // MARK: Add UI Elements like a boss
    func addUIElement<T: UIView>(_ element: T, text: String? = nil, frame: CGRect, onSuccess: (AnyObject)->() = {_ in } ){
        switch element {
        case let label as UILabel:
            label.text = text
            label.numberOfLines = 0
        case let field as UITextField:
            field.placeholder = text
        case let field as UITextView:
            field.text = text
        case let button as UIButton:
            button.setTitle(text, for: UIControlState())
        case let image as UIImageView:
            image.contentMode = .scaleAspectFill
            image.clipsToBounds = true
        case _ as UICollectionView:
        break // pass
        case let container as UIVisualEffectView:
            container.effect =  UIBlurEffect(style: UIBlurEffectStyle.light)
        default:
            break // print("I don't know my type")
        }
        placeUIElement(element, frame: frame)
        onSuccess(element)
    }
}


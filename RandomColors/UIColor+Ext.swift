//
//  UIColor+Ext.swift
//  RandomColors
//
//  Created by Peyman on 12/15/24.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
    }
}

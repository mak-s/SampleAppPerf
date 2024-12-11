//
//  UIColor+Extension.swift
//  PerformanceTest
//
//  Created by Manish  on 11/12/24.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        UIColor(
            red: CGFloat.random(in: 0...1),
            green: CGFloat.random(in: 0...1),
            blue: CGFloat.random(in: 0...1),
            alpha: 1
        )
    }
}

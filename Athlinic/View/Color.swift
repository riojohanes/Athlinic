//
//  Color.swift
//  Athlinic
//
//  Created by Rajif Afif on 03/05/23.
//

import Foundation
import SwiftUI

class ColorPalette {
    static let gradientStart = Color(UIColor(hex: "#FF891A") ?? .clear)
    static let gradientEnd = Color(UIColor(hex: "#FFC059") ?? .clear)
    static let background = Color(UIColor(hex: "#F0F0F0FF") ?? .clear)
    static let primary = Color(UIColor(hex: "#007AFF") ?? .clear)
    static let secondary = Color(UIColor(hex: "#5856D6FF") ?? .clear)
    static let accent = Color(UIColor(hex: "#FF2D55FF") ?? .clear)
}

extension UIColor {
    convenience init?(hex: String) {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexString = hexString.replacingOccurrences(of: "#", with: "")
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgbValue)
        
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgbValue & 0x0000FF) / 255.0
        let alpha = CGFloat(1.0)
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

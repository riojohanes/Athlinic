//
//  Color.swift
//  Athlinic
//
//  Created by Rajif Afif on 03/05/23.
//

import Foundation
import SwiftUI

class ColorPalette {
//    static let gradientStart = Color(UIColor(hex: "#5E5E5E") ?? .clear)
    static let gradientStart = Color(UIColor(hex: "#FFFFFF") ?? .clear)
    static let gradientEnd = Color(UIColor(hex: "#303030") ?? .clear)
    
    static let background = Color(UIColor(hex: "#454545") ?? .clear)
    static let primary = Color(UIColor(hex: "#FFB706") ?? .clear)
    static let secondary = Color(UIColor(hex: "#5856D6FF") ?? .clear)
    static let accent = Color(UIColor(hex: "#FF2D55FF") ?? .clear)
    
    static let shadowColor = Color(UIColor(hex: "#000000", alpha: 0.5) ?? .clear)
    
    static let cardBorder = Color(UIColor(hex: "#5E5E5E", alpha: 1) ?? .clear)
    static let cardBackground = Color(UIColor(hex: "#454545") ?? .clear)
    
    // Icon Gradient
    static let iconGradientStart = Color(UIColor(hex: "#FFB706") ?? .clear)
    static let iconGradientEnd = Color(UIColor(hex: "#FF8B00") ?? .clear)
    
    // Profile back gradient
    static let backProfGratdientStart = Color(UIColor(hex: "#000103") ?? .clear)
    static let backProfGratdientEnd = Color(UIColor(hex: "#001926") ?? .clear)
    static let updateButton = Color(UIColor(hex: "#FFB706") ?? .clear)
    static let doneButton = Color(UIColor(hex: "#06FF14") ?? .clear)
    
    static let bgGray = Color(UIColor(hex: "#3E4143") ?? .clear)
    
    

}

extension UIColor {
    convenience init?(hex: String, alpha: CGFloat = 1.0) {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexString = hexString.replacingOccurrences(of: "#", with: "")
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgbValue)
        
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgbValue & 0x0000FF) / 255.0
        let alpha = CGFloat(alpha)
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

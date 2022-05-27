//
//  File.swift
//  
//
//  Created by Maarten Wubs on 5/24/22.
//

import Foundation
import SwiftUI
import UIKit

extension Color {
    /// These are the Apex color designs converted to SwiftUI Colors
    static public var apexDefaultColor = Color(uiColor: UIColor.apexDefaultColor)
}

//MARK: -All Color variations
extension UIColor {
    /// Default Color
    static fileprivate var defaultApexLightModeColor = UIColor.withRGBValue(163, 22, 72)
    static fileprivate var defaultApexDarkModeColor = UIColor.withRGBValue(255, 24, 106)
    
}

//MARK: -Public colors
extension UIColor {
    /// Default color of the Apex Design system
    static public var apexDefaultColor: UIColor {
        return UIColor { traits in
            return traits.userInterfaceStyle == .dark ?
            UIColor.defaultApexDarkModeColor : UIColor.defaultApexLightModeColor
        }
    }
}

extension UIColor {
    /// Custom mehtod to make the use of RGB values easier. Just provide the value between 0 and 255
    /// and this method will do the calculation to be used in UIColor
    /// - Parameters:
    ///   - _red: value for the Red color
    ///   - _green: value for the Green color
    ///   - _blue: value for the Blue color
    /// - Returns: Returns the desired Color.
    public static func withRGBValue(_ _red: CGFloat,
                                    _ _green: CGFloat,
                                    _ _blue: CGFloat) -> UIColor {
        
        return UIColor(red: _red/255,
                       green: _green/255,
                       blue: _blue/255,
                       alpha: 1)
    }
}

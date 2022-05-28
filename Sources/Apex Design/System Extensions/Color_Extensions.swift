//
//  File.swift
//  
//
//  Created by Maarten Wubs on 5/24/22.
//

import Foundation
import SwiftUI
import UIKit

//MARK: -Public SwiftUI Colors
extension Color {
    /// These are the Apex color designs converted to SwiftUI Colors
    static public var apexDefaultColor = Color(uiColor: UIColor.apexDefaultColor)
    
    // Apex design specific colors
    static public var redbullBlue = Color(uiColor: .redbullBlue)
    static public var astonMartinGreen = Color(uiColor: .astonMartinGreen)
    static public var alpinePink = Color(uiColor: .alpinePink)
    static public var ferrariRed = Color(uiColor: .ferrariRed)
    static public var mclarenOrange = Color(uiColor: .mclarenOrange)
    static public var alphaTauriBlue = Color(uiColor: .alphaTauriBlue)
}

//MARK: -All Color variations
extension UIColor {
    /// Default Color
    static fileprivate var defaultApexLightModeColor = UIColor.withRGBValue(163, 22, 72)
    static fileprivate var defaultApexDarkModeColor = UIColor.withRGBValue(255, 24, 106)
    
    /// Redbull Blue
    static fileprivate var redbullBlueLight = UIColor.withRGBValue(27, 43, 90)
    static fileprivate var redbullBlueDark = UIColor.withRGBValue(0, 55, 216)
    
    /// Aston Martin Green
    static fileprivate var astonMartinGreenLight = UIColor.withRGBValue(0, 89, 79)
    static fileprivate var astonMartinGreenDark = UIColor.withRGBValue(3, 171, 131)
    
    /// Alpine Pink
    static fileprivate var alpinePinkLight = UIColor.withRGBValue(233, 43, 175)
    static fileprivate var alpinePinkDark = UIColor.withRGBValue(253, 75, 199)
    
    /// Ferrari Red
    static fileprivate var ferrariRedLight = UIColor.withRGBValue(166, 5, 26)
    static fileprivate var ferrariRedDark = UIColor.withRGBValue(251, 0, 33)
    
    /// McLaren Orange
    static fileprivate var mclarenOrangeLight = UIColor.withRGBValue(231, 128, 24)
    static fileprivate var mclarenOrangeDark = UIColor.withRGBValue(255, 128, 0)
    
    /// Alpha Tauri Blue
    static fileprivate var alphaTauriLight = UIColor.withRGBValue(0, 41, 63)
    static fileprivate var alphaTauriDark = UIColor.withRGBValue(11, 97, 143)
}

//MARK: -Public UIKit colors
extension UIColor {
    /// Default color of the Apex Design system
    static public var apexDefaultColor: UIColor {
        return UIColor { traits in
            return traits.userInterfaceStyle == .dark ?
            UIColor.defaultApexDarkModeColor : UIColor.defaultApexLightModeColor
        }
    }
    
    /// Redbull Blue
    static public var redbullBlue: UIColor {
        return UIColor { traits in
            return traits.userInterfaceStyle == .dark ?
            UIColor.redbullBlueDark : UIColor.redbullBlueLight
        }
    }
    
    /// Aston Martin Green
    static public var astonMartinGreen: UIColor {
        return UIColor { traits in
            return traits.userInterfaceStyle == .dark ?
            UIColor.astonMartinGreenDark : UIColor.astonMartinGreenLight
        }
    }
    
    /// Alpine Pink
    static public var alpinePink: UIColor {
        return UIColor { traits in
            return traits.userInterfaceStyle == .dark ?
            UIColor.alpinePinkDark : UIColor.alpinePinkLight
        }
    }
    
    /// Ferrari Red
    static public var ferrariRed: UIColor {
        return UIColor { traits in
            return traits.userInterfaceStyle == .dark ?
            UIColor.ferrariRedDark : UIColor.ferrariRedLight
        }
    }
    
    /// McLaren Orange
    static public var mclarenOrange: UIColor {
        return UIColor { traits in
            return traits.userInterfaceStyle == .dark ?
            UIColor.mclarenOrangeDark : UIColor.mclarenOrangeLight
        }
    }
    
    /// Alpha Tauri Blue
    static public var alphaTauriBlue: UIColor {
        return UIColor { traits in
            return traits.userInterfaceStyle == .dark ?
            UIColor.alphaTauriLight : UIColor.alphaTauriDark
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

//
//  File.swift
//  
//
//  Created by Maarten Wubs on 5/24/22.
//

import Foundation
import UIKit
import SwiftUI

/// The buttons styles available for the Apex Standard Button
public enum ApexButtonStyle {
    case standard, outlined, text, elevated, tonal
}

/// Modifies the view to look like the Standard color filled Apex View
fileprivate struct ApexFilledViewModifier: ViewModifier {
    
    var accentColor: Color
    var size: CGSize
    
    public func body(content: Content) -> some View {
        return content
            .frame(width: size.width, height: size.height)
            .background(accentColor)
            .foregroundColor(.white)
            .apexCornerRadius(size.height)
    }
}

/// Calculate the corner radius for the vies provided by the Apex Design Package
fileprivate struct ApexCornerRadius: ViewModifier {
    
    var radius: CGFloat
    
    func body(content: Content) -> some View {
        return content
            .cornerRadius(radius/2.7, corners: [.topLeft, .bottomRight])
            .cornerRadius(radius/4, corners: [.bottomLeft])
            .cornerRadius(radius/50, corners: [.topRight])
    }
}

extension View {
    /// This modifier returns the view with the background filled with the provided, which defaults to the Default Apex color,
    /// but can be any color provided.
    /// - Parameters:
    ///   - accentColor: the color of the background, this defaults to the Default Apex color
    ///   - size: the size is used to calculate the corner radius of the view
    /// - Returns: Returns the modified view.
    public func apexFilledStyle(withColor accentColor: Color = .apexDefaultColor, size: CGSize) -> some View {
        ModifiedContent(content: self,
                        modifier: ApexFilledViewModifier(accentColor: accentColor,
                                                         size: size))
    }
    
    /// This modifier can be used to get the Apex Design style corners. You provide the height of your view
    /// for the right amount of corner radius amount. You can also experiment with different values.
    /// - Parameter radius: This value is used to calculate the radius of the corners. Apex Design views
    /// use the height of the view to calculate the corner radius.
    /// - Returns: Returns your view with the adjusted corners.
    public func apexCornerRadius(_ radius: CGFloat) -> some View {
        ModifiedContent(content: self, modifier: ApexCornerRadius(radius: radius))
    }
}

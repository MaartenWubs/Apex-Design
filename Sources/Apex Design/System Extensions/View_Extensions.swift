//
//  File.swift
//  
//
//  Created by Maarten Wubs on 5/30/22.
//

import Foundation
import SwiftUI

extension View {
    /// Modifies the view with the provided corner radius for the specified corners
    /// - Parameters:
    ///   - radius: amount of cornering
    ///   - corners: corners to apply the radius to
    /// - Returns: returns a the modified view
    public func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}

fileprivate struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner
    
    struct CornerRadiusShape: Shape {

        var radius = CGFloat.infinity
        var corners = UIRectCorner.allCorners

        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            return Path(path.cgPath)
        }
    }

    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}

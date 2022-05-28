//
//  File.swift
//  
//
//  Created by Maarten Wubs on 5/19/22.
//

import Foundation
import SwiftUI
import CoreGraphics

struct ApexButton {
    
    private var button_title: String?
    private var icon_image_name: String?
    private var button_accent_color: Color
    private var button_style: ApexButtonStyle
    
}

extension ApexButton {
    
    public init(buttonStyle: ApexButtonStyle,
                buttonColor: Color = .apexDefaultColor,
                text: String,
                icon: String) {
        
        
        
        self.button_style = buttonStyle
        self.button_accent_color = buttonColor
        self.button_title = text
        self.icon_image_name = icon
    }
    
    public init(buttonStyle: ApexButtonStyle,
                buttonColor: Color = .apexDefaultColor,
                text: String) {
        self.button_title = text
        self.button_accent_color = buttonColor
        self.button_style = buttonStyle
    }
}

extension ApexButton: View {
    var body: some View {
        Text("Work in Progress")
    }
}


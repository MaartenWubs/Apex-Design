//
//  File.swift
//  
//
//  Created by Maarten Wubs on 5/19/22.
//

import Foundation
import SwiftUI
import CoreGraphics

/// <#Description#>
struct ApexButton {
    
    private var button_title: String?
    private var icon_image_name: String?
    private var button_accent_color: Color
    private var button_style: ApexButtonStyle
    private var button_size: CGSize
    
    private var button_action_to_perform: (() -> Void)
}

extension ApexButton {
    
    /// <#Description#>
    /// - Parameters:
    ///   - buttonStyle: <#buttonStyle description#>
    ///   - buttonColor: <#buttonColor description#>
    ///   - text: <#text description#>
    ///   - icon: <#icon description#>
    ///   - action: <#action description#>
    public init(buttonStyle: ApexButtonStyle = .standard,
                buttonColor: Color = .apexDefaultColor,
                text: String,
                icon: String? = nil,
                size: CGSize = CGSize(width: 140, height: 40),
                action: @escaping (() -> Void)) {
        
        self.button_style = buttonStyle
        self.button_accent_color = buttonColor
        self.button_title = text
        self.icon_image_name = icon
        self.button_size = size
        
        self.button_action_to_perform = action
    }
    
    /// <#Description#>
    /// - Parameters:
    ///   - buttonStyle: <#buttonStyle description#>
    ///   - buttonColor: <#buttonColor description#>
    ///   - icon: <#icon description#>
    ///   - action: <#action description#>
    public init(buttonStyle: ApexButtonStyle = .standard,
                buttonColor: Color = .apexDefaultColor,
                icon: String,
                size: CGSize = CGSize(width: 140, height: 40),
                action: @escaping (() -> Void)) {
        
        
        
        self.button_style = buttonStyle
        self.button_accent_color = buttonColor
        self.icon_image_name = icon
        self.button_size = size
        
        self.button_action_to_perform = action
    }
}

extension ApexButton: View {
    var body: some View {
        if button_style == .standard {
            Button  {
                button_action_to_perform()
            } label: {
                HStack {
                    if icon_image_name != nil {
                        Image(systemName: icon_image_name!)
                    }
                    if button_title != nil {
                        Text(button_title!)
                    }
                }
            }
            .background(button_accent_color)
            .foregroundColor(.white)
            .apexFilledStyle(withColor: button_accent_color, size: button_size)
            
        } else {
            Text("Work in Progress")
        }
    }
}


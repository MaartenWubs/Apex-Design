//
//  File.swift
//  
//
//  Created by Maarten Wubs on 5/19/22.
//

import Foundation
import SwiftUI
import CoreGraphics

/// Apex Button
///
/// A Control that executes your custom code in response to user
/// interactions.
public struct ApexButton {
    
    private var button_title: String?
    private var icon_image_name: String?
    private var button_accent_color: Color
    private var button_style: ApexButtonStyle
    private var button_size: CGSize
    
    private var button_action_to_perform: (() -> Void)
}

extension ApexButton {
    
    /// Creates a new button with the specified title, icon, color, style and action. This is
    /// the extended version of the Apex Button
    /// - Parameters:
    ///   - buttonStyle: The displayed style for the button.
    ///   - buttonColor: The accent color for the button.
    ///   - text: The displayed text for the button.
    ///   - icon: The icon that is displayed infront of the text.
    ///   - action: The action to perform.
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
    
    /// Creates a new button with the specified icon, color, style and action. This is
    /// the extended version of the Apex Button
    /// - Parameters:
    ///   - buttonStyle: The displayed style for the button.
    ///   - buttonColor: The accent color for the button.
    ///   - icon: The displayed Icon for the button.
    ///   - action: The action to perfrom.
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
    public var body: some View {
        if button_style == .standard {
            Button {
                self.button_action_to_perform()
            } label: {
                HStack {
                    if self.icon_image_name != nil {
                        Image(systemName: self.icon_image_name!)
                    }
                    if self.button_title != nil {
                        Text(self.button_title!)
                    }
                }
            }
            .apexFilledStyle(withColor: self.button_accent_color, size: self.button_size)
        } else {
            Text("Work in Progress")
        }
    }
}


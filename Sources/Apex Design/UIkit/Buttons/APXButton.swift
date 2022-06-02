//
//  File.swift
//  
//
//  Created by Maarten Wubs on 5/19/22.
//

import Foundation
import CoreGraphics
import UIKit

/// Apex Button
///
/// A Control that executes your custom code in response to user
/// interactions.
public class APXButton: UIButton {
    
    private var button_title: String
    private var button_color: UIColor
    private var button_icon: String?
    private var button_style: ApexButtonStyle
    private var button_size: CGSize
    
    /// Creates a new button with the specified title, icon, color, style and action. This is
    /// the extended version of the Apex Button
    /// - Parameters:
    ///   - buttonTitle: a string with the displayed title
    ///   - buttonIcon: a string as reference to the icon shown in front
    ///   of the button title
    ///   - color: The accent color of the button. This defaults to the Apex
    ///   default color
    ///   - buttonStyle: The style that the button displays. This defaults to a standard
    ///   filled button if no value is provided.
    ///   - action: The action to perform when the button is slected.
    public init(buttonTitle: String,
                buttonIcon: String,
                color: UIColor = .apexDefaultColor,
                buttonStyle: ApexButtonStyle = .standard,
                size: CGSize = CGSize(width: 140, height: 40)) {
        
        self.button_title = buttonTitle
        self.button_color = color
        self.button_icon = buttonIcon
        self.button_style = buttonStyle
        self.button_size = size
        
        super.init(frame: .zero)
        makeViewWithImage()
    }
    
    /// Creates a new button with the specified title, color, style and action. This is a title
    /// only version of the button and doesn't show any icon.
    /// - Parameters:
    ///   - buttonTitle: a string the displayed text.
    ///   - color: The accent color for the button. This defaults to the Apex
    ///   default color if no value is provided.
    ///   - buttonStyle: The style that the button displays. This defaults to a standard
    ///   filled button if no value is provided.
    ///   - action: The action to perform when the button is selected.
    public init(buttonTitle: String,
                color: UIColor = .apexDefaultColor,
                buttonStyle: ApexButtonStyle = .standard,
                size: CGSize = CGSize(width: 140, height: 40)) {
        
        self.button_title = buttonTitle
        self.button_color = color
        self.button_style = buttonStyle
        self.button_size = size
        
        super.init(frame: .zero)
        makeView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension APXButton {
    private func makeView() {
        translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(button_title, for: .normal)
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: self.button_size.height),
            self.widthAnchor.constraint(equalToConstant: self.button_size.width)
        ])
        self.backgroundColor = button_color
        self.makeCorners(self.button_size.height, corners: [.topLeft, .bottomRight])
        
    }
    
    private func makeViewWithImage() {
        makeView()
        self.setImage(UIImage(systemName: button_icon!), for: .normal)
    }
}


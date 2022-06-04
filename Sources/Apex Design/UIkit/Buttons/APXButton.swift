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
    private var button_action_to_perform: (() -> Void)
    
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
                size: CGSize = CGSize(width: 140, height: 40),
                action: @escaping (() -> Void)) {
        
        self.button_title = buttonTitle
        self.button_color = color
        self.button_icon = buttonIcon
        self.button_style = buttonStyle
        self.button_size = size
        self.button_action_to_perform = action
        
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
                size: CGSize = CGSize(width: 120, height: 40),
                action: @escaping (() -> Void)) {
        
        self.button_title = buttonTitle
        self.button_color = color
        self.button_style = buttonStyle
        self.button_size = size
        self.button_action_to_perform = action
        
        super.init(frame: .zero)
        makeView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension APXButton {
    // MARK: -Make View method
    private func makeView() {
        // --INFO--: Check the design guide for the looks of the button.
        
        // The configuration for the standard button.
        if self.button_style == .standard {
            translatesAutoresizingMaskIntoConstraints = false
            self.setTitle(button_title, for: .normal)
            NSLayoutConstraint.activate([
                self.heightAnchor.constraint(equalToConstant: self.button_size.height),
                self.widthAnchor.constraint(equalToConstant: self.button_size.width)
            ])
            self.backgroundColor = button_color
            self.makeApexCorners(withRadius: self.button_size.height)
            self.addTarget(self, action: #selector(buttonHandler), for: .touchUpInside)
            self.showsTouchWhenHighlighted = true // This property is temporary until the TODOs are done
        }
        // TODO: Make outlined button
        else if self.button_style == .outlined {
            
        }
        // TODO: Make text button
        else if self.button_style == .text {
            
        }
        // TODO: Make eleveted Button
        else if self.button_style == .elevated {
            
        }
        // TODO: Make tonal buttons
        else if self.button_style == .tonal {
            
        }
        
    }
    
    private func makeViewWithImage() {
        makeView()
        self.setImage(UIImage(systemName: button_icon!), for: .normal)
    }
}

extension APXButton {
    @objc
    func buttonHandler(_ completion: @escaping () -> Void) {
        //TODO: Make shimmer affect when button is tapped
        //TODO: Make inner shadow effect on tap
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            self.handler()
        }
    }
    
    @objc
    func handler() {
        self.button_action_to_perform()
    }
}

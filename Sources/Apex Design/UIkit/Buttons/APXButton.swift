//
//  File.swift
//  
//
//  Created by Maarten Wubs on 5/19/22.
//

import Foundation
import CoreGraphics
import UIKit

public class APXButton: UIButton {
    
    private var button_title: String
    private var button_color: UIColor
    private var button_icon: String?
    private var button_style: ApexButtonStyle
    
    public init(buttonTitle: String,
                buttonIcon: String,
                color: UIColor = .apexDefaultColor,
                buttonStyle: ApexButtonStyle = .standard) {
        
        self.button_title = buttonTitle
        self.button_color = color
        self.button_icon = buttonIcon
        self.button_style = buttonStyle
        
        super.init(frame: .zero)
        makeView()
    }
    
    public init(buttonTitle: String,
                color: UIColor = .apexDefaultColor,
                buttonStyle: ApexButtonStyle = .standard) {
        
        self.button_title = buttonTitle
        self.button_color = color
        self.button_style = buttonStyle
        
        super.init(frame: .zero)
        makeView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private var text_label: UILabel = {
        let label = UILabel()
        return label
    }()
    
}

extension APXButton {
    private func makeView() {
        translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = button_color
        text_label.text = button_title
    }
}

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
    
    public init(buttonTitle: String, color: UIColor = .apexDefaultColor) {
        self.button_title = buttonTitle
        self.button_color = color
        
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
    }
}

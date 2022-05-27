//
//  File.swift
//  
//
//  Created by Maarten Wubs on 5/25/22.
//

import Foundation
import UIKit

extension UIView {
    public func addConstraintsWithFormat(_ format: String, views: UIView...) {
            //
            // This methods is a shrunken down verion of the "addConstraints" method
            // to make code more easily readable.
            //
            var viewsDict = [String: UIView]()
            for (index, view) in views.enumerated() {
                let key = "v\(index)"
                view.translatesAutoresizingMaskIntoConstraints = false
                viewsDict[key] = view
            }
            
            addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format,
                                                          options: NSLayoutConstraint.FormatOptions(),
                                                          metrics: nil,
                                                          views: viewsDict))
        }

}

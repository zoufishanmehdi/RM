//
//  Extensions.swift
//  RM
//
//  Created by Zoufishan Mehdi on 3/26/23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach ({
            addSubview($0)
        })
    }
}

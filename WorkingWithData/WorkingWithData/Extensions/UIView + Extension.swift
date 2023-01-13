//
//  UIView + Extension.swift
//  WorkingWithData
//
//  Created by Илья Дубровский on 11.01.2023.
//

import UIKit

extension UIView {
    
    /// Метод позволяется растянуть view на весь superView,
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints                               = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive             = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive       = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive     = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive   = true
    }
}

//
//  UIView+Extension.swift
//  PerformanceTest
//
//  Created by Manish  on 11/12/24.
//

import UIKit

extension UIView {
    
    func attach(subView: UIView) {
        self.addSubview(subView)
        subView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            subView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            subView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            subView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }

}

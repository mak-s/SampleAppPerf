//
//  SwiftUIViewController.swift
//  PerformanceTest
//
//  Created by Manish  on 11/12/24.
//

import UIKit

class SwiftUIViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addSwiftUI(
            view: SwiftUIView(
                identifier: UUID().uuidString
            )
        )
        
    }
}

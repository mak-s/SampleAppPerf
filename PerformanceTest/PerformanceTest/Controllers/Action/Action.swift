//
//  Action.swift
//  PerformanceTest
//
//  Created by Manish  on 11/12/24.
//

import UIKit

class Action {
    let title: String
    let handler: (() -> Void)
    
    init(title: String, handler: @escaping () -> Void) {
        self.title = title
        self.handler = handler
    }
}

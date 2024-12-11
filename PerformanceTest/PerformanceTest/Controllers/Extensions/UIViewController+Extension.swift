//
//  UIViewController+Extension.swift
//  PerformanceTest
//
//  Created by Manish  on 11/12/24.
//

import UIKit
import SwiftUI

extension UIViewController {
    
    func addSwiftUI<T:View>(view: T) {
        let hostingController = UIHostingController(rootView: view)
        self.addChild(hostingController)
        
        let childView = hostingController.view!
        childView.backgroundColor = UIColor.random()
        
        self.view.attach(subView: childView)
    }
    
    @discardableResult
    func pushController(storyboardId: String) -> UIViewController? {
        guard let navigationController = self.navigationController else {
            return nil
        }
        
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: storyboardId) else {
            return nil
        }
        
        navigationController.pushViewController(viewController, animated: true)
        return viewController
    }
    
    @discardableResult
    func popController() -> Bool {
        guard let navigationController = self.navigationController,
              navigationController.viewControllers.last === self
        else {
            return false
        }
        
        navigationController.popViewController(animated: true)
        return true
    }
    
    @discardableResult
    func popToRoot() -> Bool {
        guard let navigationController = self.navigationController,
              navigationController.viewControllers.last === self
        else {
            return false
        }
        
        navigationController.popToRootViewController(animated: true)
        return true
    }
}

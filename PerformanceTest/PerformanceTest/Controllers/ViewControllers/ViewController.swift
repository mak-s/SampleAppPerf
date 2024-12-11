//
//  ViewController.swift
//  PerformanceTest
//
//  Created by Manish  on 11/12/24.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .random()
        
        let count = self.navigationController?.viewControllers.count ?? 0
        self.title = "VC \(count)"
    }
    
    override func setupActions() {
        if self.parent is UINavigationController {
            self.actions.append(
                Action(title: "Push View Controller", handler: {
                    self.pushController(storyboardId: "ViewController")
                })
            )
        }
        super.setupActions()
    }
    
    @IBAction func pushController(_ sender: Any) {
        self.pushController(storyboardId: "ViewController")
    }
    
    @IBAction func popController(_ sender: Any) {
        self.popController()
    }
}

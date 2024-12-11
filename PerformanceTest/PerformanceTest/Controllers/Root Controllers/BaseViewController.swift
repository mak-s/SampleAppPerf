//
//  BaseViewController.swift
//  PerformanceTest
//
//  Created by Manish  on 11/12/24.
//

import UIKit

class BaseViewController: UIViewController {
    let identifier = UUID().uuidString

    var actions: [Action] = []
    var label: UILabel?

    override func viewDidLoad() {
        Swift.print("[APP] \(String(describing: type(of: self))) \(#function) - \(identifier)")
        
        super.viewDidLoad()
        
        let label = self.label ?? {
            let label = UILabel(frame: CGRect(x: 100, y: 100, width: 1, height: 1))
            label.text = self.identifier
            label.textAlignment = .center
            label.backgroundColor = .gray
            self.label = label
            return label
        }()
        
        self.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        setupActions()
        setupGestures()
    }
    
    func setupGestures() {
        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(showActionSheet(sender:)))
        self.view.addGestureRecognizer(gesture)
    }
    
    func setupActions() {
        if let navigationController = self.navigationController, navigationController.viewControllers.count > 1 {
            actions.append(
                Action(title: "Pop View Controller", handler: {
                    self.popController()
                })
            )
            actions.append(
                Action(title: "Pop to Root", handler: {
                    self.popToRoot()
                })
            )
        }
    }
    
    @objc
    func showActionSheet(sender: Any) {
        guard !self.actions.isEmpty else {
            return
        }
        
        let actionSheet = UIAlertController(title: "Action", message: "", preferredStyle: .actionSheet)
        for action in actions {
            actionSheet.addAction(
                UIAlertAction(title: action.title, style: .default, handler: { _ in
                    action.handler()
                })
            )
        }
        self.present(actionSheet, animated: true)
    }
}

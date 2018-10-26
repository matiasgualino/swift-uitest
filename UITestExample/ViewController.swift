//
//  ViewController.swift
//  UITestExample
//
//  Created by Matias Gualino on 26/10/18.
//  Copyright © 2018 Matias Gualino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Remember to add ViewController to UITest Target
        self.view.accessibilityIdentifier = ViewController.CONTROLLER_ID
        
        self.prepareLabel()
        self.prepareButton()
    }

    func prepareLabel() {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
            ])
        
        label.textColor = UIColor.red
        label.text = "Label"
        label.accessibilityIdentifier = ViewController.LABEL_ID
        
        self.label = label
    }
    
    func prepareButton() {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100)
            ])
        
        button.setTitle("Click!", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(buttonTapped)))
        button.accessibilityIdentifier = ViewController.BUTTON_ID
    }
    
    @objc func buttonTapped() {
        self.label?.text = "Button Clicked!"
    }
}

// Identifiers to use in TestCase
extension ViewController {
    static let CONTROLLER_ID: String = "CONTROLLER_ID"
    static let LABEL_ID: String = "LABEL_ID"
    static let BUTTON_ID: String = "BUTTON_ID"
}


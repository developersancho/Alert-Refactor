//
//  ViewController.swift
//  Alert-Refactor
//
//  Created by developersancho on 14.10.2018.
//  Copyright © 2018 developersancho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func inCompleteFormTapped(_ sender: AlertButton) {
        Alert.showBasicAlert(on: self, with: "In Complete Form", message: "Please fill out all fields")
    }
    
    @IBAction func invalidEmailTapped(_ sender: AlertButton) {
        let actionSheet = UIAlertController(title: "Image Source", message: "Choose camera or your library", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: nil))
        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: nil))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    @IBAction func unableRetreiveDataTapped(_ sender: AlertButton) {
        let alert = UIAlertController(title: "Registration", message: "Enter your name", preferredStyle: .alert)
        alert.addTextField { (textField: UITextField) in
            textField.placeholder = "Your name"
        }
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action: UIAlertAction) in
            if let textfield = alert.textFields?.first {
                if textfield.text == "" {
                    print("You must enter name")
                } else {
                    print("Hello \(textfield.text!)")
                }
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}


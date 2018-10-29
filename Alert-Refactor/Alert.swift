//
//  Alert.swift
//  Alert-Refactor
//
//  Created by developersancho on 14.10.2018.
//  Copyright © 2018 developersancho. All rights reserved.
//

import Foundation
import UIKit

struct Alert {
    static func showBasicAlert(on vc: UIViewController, with title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.async { vc.present(alert, animated: true, completion: nil) }
    }
    
    static func showIncompleteFormAlert(on vc: UIViewController){
        showBasicAlert(on: vc, with: "In Complete Form", message: "Please...")
    }
    
}

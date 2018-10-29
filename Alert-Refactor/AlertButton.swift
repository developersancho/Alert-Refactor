//
//  AlertButton.swift
//  Alert-Refactor
//
//  Created by developersancho on 14.10.2018.
//  Copyright © 2018 developersancho. All rights reserved.
//

import Foundation
import UIKit

class AlertButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    fileprivate func setupButton(){
        setTitleColor(.white, for: .normal)
        backgroundColor = Colors.seanRed
        titleLabel?.font = UIFont(name: Fonts.avenirNextMedium, size: 20)
        layer.cornerRadius = frame.size.height / 2
    }
    
}

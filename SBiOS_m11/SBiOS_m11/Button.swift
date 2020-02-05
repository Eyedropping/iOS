//
//  Button.swift
//  SBiOS_m11
//
//  Created by Dmitry Aksyonov on 11.01.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

@IBDesignable class Button: UIButton {
    
    private let button = UIButton()
    
    @IBInspectable var buttonBorderColor: UIColor = .green {
        didSet { button.layer.borderColor = buttonBorderColor.cgColor }
    }
    
    @IBInspectable var buttonBorderLineWidth: CGFloat = 2 {
        didSet { button.layer.borderWidth = buttonBorderLineWidth }
    }
    
    @IBInspectable var buttonCornerRadius: CGFloat = 0.5 {
        didSet { button.layer.cornerRadius = buttonCornerRadius }
    }
    
    var isSetup = false
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if isSetup { return }
        isSetup = true
        
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        button.backgroundColor = .gray
        button.setTitle("Press me", for: .normal)
        addSubview(button)
    }
    
}

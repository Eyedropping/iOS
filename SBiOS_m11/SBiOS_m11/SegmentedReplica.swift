//
//  SegmentedReplica.swift
//  SBiOS_m11
//
//  Created by Dmitry Aksyonov on 15.01.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

@IBDesignable class SegmentedReplica: UIView {
    
    @IBInspectable private let view = UIView()
    @IBInspectable private let imageView = UIImageView()
    @IBInspectable private let button1 = UIButton()
    @IBInspectable private let button2 = UIButton()
    @IBInspectable private let button3 = UIButton()
    @IBInspectable private let stackView = UIStackView()
    
    @IBAction func buttonPressed(sender: UIButton) {
        switch sender.tag {
        case 0:
            imageView.frame = CGRect(x: 8, y: 49, width: 70, height: 30)
        case 1:
            imageView.frame = CGRect(x: 97, y: 49, width: 70, height: 30)
        case 2:
            imageView.frame = CGRect(x: 86, y: 49, width: 70, height: 30)
        default:
            break
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        view.frame = CGRect(x: 0, y: 0, width: 262, height: 128)
        view.backgroundColor = UIColor.gray
        
        imageView.frame = CGRect(x: 0, y: 49, width: view.frame.width / 3, height: 30)
        imageView.backgroundColor = .blue
        imageView.layer.cornerRadius = 3
        imageView.alpha = 0.5
        
        stackView.frame = CGRect(x: 0, y: 49, width: view.frame.width, height: 30)
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .white
        
        button1.frame = CGRect(x: 8, y: 49, width: 70, height: 30)
        button1.setTitle("One", for: .normal)
        
        button2.frame = CGRect(x: 97, y: 49, width: 70, height: 30)
        button2.setTitle("Two", for: .normal)
        
        button3.frame = CGRect(x: 186, y: 49, width: 70, height: 30)
        button3.setTitle("Three", for: .normal)
        
        for v in [button1, button2, button3] {
            v.layer.borderWidth = 0.5
            v.layer.borderColor = UIColor.black.cgColor
            v.layer.cornerRadius = 2
            stackView.addArrangedSubview(v)
        }
        
        for v in [imageView, stackView] {
            view.addSubview(v)
        }
        
        addSubview(view)
    }
}

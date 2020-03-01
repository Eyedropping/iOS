//
//  ViewController.swift
//  SBiOS_m13
//
//  Created by Dmitry Aksyonov on 07.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var menuView: UIView!
    var isMenuOpened = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        // Do any additional setup after loading the view.
    }
    

    @IBAction func linear(_ sender: Any) {
        animate(damping: 0.8, velocity: 0)
    }
    
    @IBAction func inOUt(_ sender: Any) {
        animate(damping: 0.5, velocity: 0.2)
    }
    
    @IBAction func inAnimation(_ sender: Any) {
        animate(damping: 1, velocity: 0.5)
    }
    
    @IBAction func outAnimation(_ sender: Any) {
        animate(damping: 0.4, velocity: 0.5)
    }
    
    @IBOutlet weak var menuViewTopConstraint: NSLayoutConstraint!
    
    func animate(damping: CGFloat, velocity: CGFloat) {
        menuViewTopConstraint.constant = 0
        self.view.layoutIfNeeded()
        //        self.menuView.frame.origin.y = 20
        
        UIView.animate(withDuration: 0.45, delay: 0, usingSpringWithDamping: damping, initialSpringVelocity: velocity, options: UIView.AnimationOptions(), animations: {
            self.menuViewTopConstraint.constant = 400
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        menuView.layer.shadowOpacity = 0.7
        menuView.layer.shadowColor = UIColor.black.cgColor
        
        let animation = CABasicAnimation(keyPath: "shadowRadius")
        animation.fromValue = NSNumber(value: 0)
        animation.toValue = NSNumber(value: Float(10))
        animation.duration = 1.0
        menuView.layer.add(animation, forKey: "shadowRadius")
        menuView.layer.shadowRadius = 10
        menuView.layer.transform = .init(m11: 0.2, m12: 0.3, m13: 0.3, m14: 0.8, m21: 0.7, m22: 0.6, m23: 0.0, m24: 0.6, m31: 0.5, m32: 0.9, m33: 0.7, m34: 0.0, m41: 0.6, m42: 0.8, m43: 0.0, m44: 0.7)
    }
}


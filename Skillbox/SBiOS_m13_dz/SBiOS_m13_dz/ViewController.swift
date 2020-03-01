//
//  ViewController.swift
//  SBiOS_m13_dz
//
//  Created by Dmitry Aksyonov on 08.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var squareView: UIImageView!
    @IBOutlet weak var animationNumberLabel: UILabel!
    
    @IBOutlet weak var squareViewLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var squareViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var squareViewTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var squareViewAspectRatioConstraint: NSLayoutConstraint!
    
    func endlessRotation() {
        
    }
    
    
    
    var animationLabelTextNumber = 1
    
    @IBAction func previousAnimationButton(_ sender: Any) {
        if animationLabelTextNumber > 1 {
            animationLabelTextNumber -= 1
            animationNumberLabel.text = "\(animationLabelTextNumber)"
            switchAnimation()
        }
    }
    
    @IBAction func nextAnimationButton(_ sender: Any) {
        if animationLabelTextNumber < 7 {
            animationLabelTextNumber += 1
            animationNumberLabel.text = "\(animationLabelTextNumber)"
            switchAnimation()
        }
    }
    
    func switchAnimation(){
        switch animationLabelTextNumber {
        case 1:
            rollBackToInitialState()
            UIView.animate(withDuration: 2, animations: {
                self.squareView.backgroundColor = .yellow
            })
        case 2:
            rollBackToInitialState()
            UIView.animate(withDuration: 2, animations: {
                self.squareViewLeadingConstraint.constant = 174
                self.squareViewTopConstraint.constant = 0
                self.squareViewTrailingConstraint.constant = 0
                self.squareViewAspectRatioConstraint.constant = 0
                self.view.layoutIfNeeded()
            })
        case 3:
            rollBackToInitialState()
            UIView.animate(withDuration: 2, animations: {
                self.squareView.layer.cornerRadius = self.squareView.frame.size.width / 2
            })
        case 4:
            rollBackToInitialState()
            UIView.animate(withDuration: 2, animations: {
                self.squareView.transform = CGAffineTransform(rotationAngle: .pi)
            })
        case 5:
            rollBackToInitialState()
            UIView.animate(withDuration: 2, animations: {
                self.squareView.alpha = 0
            })
        case 6:
            rollBackToInitialState()
            UIView.animate(withDuration: 2, animations: {
                self.squareView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                UIView.animate(withDuration: 2, delay: 2, options: UIView.AnimationOptions(), animations: {
                    self.squareView.transform = CGAffineTransform(scaleX: 1, y: 1)
                }, completion: nil)
            })
        case 7:
            rollBackToInitialState()
            UIView.animate(withDuration: 0.3, delay: 0, options: .repeat, animations: {
                self.squareView.transform = self.squareView.transform.rotated(by: .pi / 2)
            }, completion: nil)
        default:
            break
        }
    }
    
    func rollBackToInitialState() {
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: UIView.AnimationOptions(), animations: {
            self.squareViewLeadingConstraint.constant = 87
            self.squareViewTopConstraint.constant = 136
            self.squareView.alpha = 1
            self.squareViewTrailingConstraint.constant = 87
            self.squareViewAspectRatioConstraint.constant = 0
            self.squareView.backgroundColor = .red
            self.squareView.layer.cornerRadius = 0
            self.squareView.transform = CGAffineTransform.identity
            self.squareView.frame.size.width = 240
            self.squareView.frame.size.height = 240
            self.squareView.layer.removeAllAnimations()
            self.view.layoutIfNeeded()
        }, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        squareView.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    
    
}


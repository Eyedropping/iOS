//
//  UserDefaulsViewController.swift
//  SBiOS_m14_dz
//
//  Created by Dmitry Aksyonov on 11.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

class UserDefaulsViewController: ViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var dataPresentationLabel: UILabel!
    
    let alert = UIAlertController(title: "No Input", message: "Please make sure each field is not left blank", preferredStyle: .alert)
    
    @objc func dismissOnTapOutside() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveData(_ sender: Any) {
        if firstNameTextField.text != "" && lastNameTextField.text != "" {
            PersistentDataUserDefaults.shared.fName = firstNameTextField.text!
            PersistentDataUserDefaults.shared.lName = lastNameTextField.text!
        } else {
            self.present(alert, animated: true, completion: {
                self.alert.view.superview?.isUserInteractionEnabled = true
                self.alert.view.superview?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.dismissOnTapOutside)))
            })
        }
    }
    
    @IBAction func showData(_ sender: Any) {
        dataPresentationLabel.text = "\(PersistentDataUserDefaults.shared.fName) \(PersistentDataUserDefaults.shared.lName)"
        dataPresentationLabel.alpha = 1
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

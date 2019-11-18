//
//  BlueViewController.swift
//  SBiOS_m7_lessons
//
//  Created by watchingcarsgoby on 04.11.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

protocol BlueControllerDelegate {
    func setRole(_ role: String)
}

class BlueViewController: UIViewController {
    
    var userName = "" {
        didSet { userNameLabel?.text = userName}
    }
    
    var delegate: BlueControllerDelegate?
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var roleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("Hello, I'm showed")
//        userNameLabel.text = userName
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        navigationController?.popViewController(animated: true )
        delegate?.setRole(roleTextField.text!)
    }
    
    @IBAction func roleChanged(_ sender: Any) {
        delegate?.setRole(roleTextField.text!)
    }

}

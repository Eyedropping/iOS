//
//  ViewController.swift
//  SBiOS_m7_lessons
//
//  Created by watchingcarsgoby on 04.11.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var finalNameLabel: UILabel!
    
    private var blueVC: BlueViewController?
    var role = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? BlueViewController, segue.identifier == "EmbedBlue" {
            blueVC = vc
            vc.delegate = self
        }
        
    }
    
    
    @IBAction func changedName(_ sender: Any) {
        blueVC?.userName = nameTextField.text!
        updateFinalLabel()
    }
    
    func updateFinalLabel(){
        finalNameLabel.text = "\(nameTextField.text!), \(role)"
    }
    
}

extension ViewController: BlueControllerDelegate {
    func setRole(_ role: String) {
        self.role = role
        updateFinalLabel()
    }
}

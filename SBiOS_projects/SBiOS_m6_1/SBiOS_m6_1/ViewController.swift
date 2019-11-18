//
//  ViewController.swift
//  SBiOS_m6_1
//
//  Created by watchingcarsgoby on 25.10.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var labelIterations: Int = 0
    
    @IBOutlet weak var text_field: UITextField!
    var decimals = Int(text_field.text)
    
    @IBAction func button(_ sender: Any) {
        
        if labelIterations == 0 {
            label.text = ""
            label.text?.append(text_field.text!)
            label.text?.append(" ")
            labelIterations += 1
        }
        else {
            label.text?.append(text_field.text!)
            label.text?.append(" ")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

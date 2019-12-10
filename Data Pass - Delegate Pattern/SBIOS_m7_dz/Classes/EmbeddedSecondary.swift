//
//  EmbeddedSecondaryViewController.swift
//  SBIOS_m7_dz
//
//  Created by watchingcarsgoby on 15.11.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

protocol SecondaryDelegate {
    func sendData(data: UIColor)
}

class EmbeddedSecondary: UIViewController    {
    
    var delegate: SecondaryDelegate?
    
    @IBAction func colorPicker(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            let settings = UIColor.green
            delegate?.sendData(data: settings)
        case 1:
            let settings = UIColor.yellow
            delegate?.sendData(data: settings)
        case 2:
            let settings = UIColor.purple
            delegate?.sendData(data: settings)
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}



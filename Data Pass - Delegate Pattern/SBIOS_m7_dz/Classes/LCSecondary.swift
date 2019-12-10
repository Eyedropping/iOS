//
//  LC.swift
//  SBIOS_m7_dz
//
//  Created by watchingcarsgoby on 11.11.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

class LCSecondary: UIViewController {
    
    public var dataToBePassed: String?
    
    @IBAction func colorSelector(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            performSegue(withIdentifier: "unwindRed", sender: Any?.self)
        case 2:
            performSegue(withIdentifier: "unwindGreen", sender: Any?.self)
        case 1:
            performSegue(withIdentifier: "unwindBlue", sender: Any?.self)
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "unwindRed":
            dataToBePassed = "Red Chosen"
        case "unwindGreen":
            dataToBePassed = "Blue Chosen"
        case "unwindBlue":
            dataToBePassed = "Green Chosen"
        default:
            break
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
}

//
//  LCMain.swift
//  SBIOS_m7_dz
//
//  Created by watchingcarsgoby on 11.11.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

class LCMain: UIViewController {

    var dataToBereceived: String?
    
    @IBOutlet weak var lcMainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func unwindFromLCSecondary(_ sender: UIStoryboardSegue) {
        if sender.source is LCSecondary {
            if let senderVC = sender.source as? LCSecondary {
                dataToBereceived = senderVC.dataToBePassed
            }
        }
        
        lcMainLabel.text = dataToBereceived
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowSecondary" {
            _ = segue.destination as! LCSecondary
        }
    }
    
}

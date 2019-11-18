//
//  LabelChangerScreen1.swift
//  SBiOS_m7_dz_2
//
//  Created by watchingcarsgoby on 11.11.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

class LabelChangerScreen1: UIViewController, LabelChangerScreen2Delegate {
    
    func doSomethingWith(data: String) {
        <#code#>
    }
    
    
    func receiveDataToLabelFromLCS2() {
        lc1Label.text = "RedChosen"
    }
    
    @IBOutlet weak var lc1Label: UILabel!
    
    
    @IBAction func showLC2(_ sender: Any) {
        performSegue(withIdentifier: "ShowLC2", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let labelChangerScreen2 = segue.destination as! LabelChangerScreen2
        labelChangerScreen2.delegate = self
    }
    
}

//
//  LabelChangerScreen2.swift
//  SBiOS_m7_dz_2
//
//  Created by watchingcarsgoby on 11.11.2019.
//  Copyright © 2019 watchingcarsgoby. All rights reserved.
//

import UIKit

protocol LabelChangerScreen2Delegate: NSObjectProtocol {
    func doSomethingWith(data: String)
}

class LabelChangerScreen2: UIViewController {
    
    weak var delegate: LabelChangerScreen2Delegate?
    
    if let delegate = delegate.doSomethingWith
    
    @IBAction func change2Red(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func change2Green(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func change2Blue(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

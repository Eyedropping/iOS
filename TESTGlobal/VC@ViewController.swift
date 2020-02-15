//
//  VC@ViewController.swift
//  TESTGlobal
//
//  Created by Dmitry Aksyonov on 15.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

class VC_ViewController: UIViewController {
    
    let vc = ViewController(nibName: "View", bundle: nil)


    override func viewDidLoad() {
        super.viewDidLoad()
        vc.restorationIdentifier = "hui"    
    }
}

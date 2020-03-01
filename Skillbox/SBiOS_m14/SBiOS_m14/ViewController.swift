//
//  ViewController.swift
//  SBiOS_m14
//
//  Created by Dmitry Aksyonov on 09.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Persistence.shared.test()
    }
}


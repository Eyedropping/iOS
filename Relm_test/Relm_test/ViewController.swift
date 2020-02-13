//
//  ViewController.swift
//  Relm_test
//
//  Created by Dmitry Aksyonov on 09.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let persistentData = PersistentData.persistentDataSingleton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        persistentData.testRealm()
    }
}

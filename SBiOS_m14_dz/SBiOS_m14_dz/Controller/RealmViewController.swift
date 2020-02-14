//
//  RealmViewController.swift
//  SBiOS_m14_dz
//
//  Created by Dmitry Aksyonov on 11.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

class RealmViewController: ViewController {

    @IBOutlet weak var inputTaskTextField: UITextField!
    
    let realm = PersistentDataRealm.shared
    let task = Task()
    
    
    @IBAction func saveTaskButton(_ sender: Any) {
        if inputTaskTextField.text != "" {
            
        }
    }
    
    
    @IBAction func deleteLastTaskButton(_ sender: Any) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

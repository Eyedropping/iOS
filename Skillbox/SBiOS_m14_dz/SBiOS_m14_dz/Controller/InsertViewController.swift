//
//  InsertViewController.swift
//  SBiOS_m14_dz
//
//  Created by Dmitry Aksyonov on 16.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit
import RealmSwift

// Implementation of the ViewController designated to create tasks. The back-end adds the data to the Realm data model.

class InsertViewController: UIViewController {
    
    var incomingToDo: ToDoObject? = nil // creating a buffer var to edit some task
    let realm = try! Realm() // same as before - Realm instance
    
    // bind the properties - to insert a task and to set the realm data model
    @IBOutlet weak var inserTaskTextField: UITextField!
    @IBOutlet weak var isDoneSwitch: UISwitch!
    
    @IBAction func saveBarButton(_ sender: Any) {
        if let goodToDo = incomingToDo { // if an incomingTodo has value - the lines below will succeed and write the new values (clicked on a cell with values -> indexPath shit fired up and filled the realm viewController buffer var with the value obtained from the indexPath -> incomingToDo is now assigned with some value -> now this func is checking out like "this is not nil, then it is the todo that should be edited". now I understand how powerful the index path is. you do not need to specify anything. it does everything for you - so you do not need to worry WHAT task you are editing. so the realm will write everything in place 
            try! realm.write {
                goodToDo.isDone = isDoneSwitch.isOn
                goodToDo.toDoText = inserTaskTextField.text!
            }
        } else {
            let toDo = ToDoObject() // creating the todo object to be zapilen to realm data model
            // assigning the input from the viewController to the constant to be added to the Realm data-model
            toDo.toDoText = inserTaskTextField.text!
            toDo.isDone = isDoneSwitch.isOn
            
            try! realm.write {
                realm.add(toDo)
            }
        }		
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // here we're telling this viewController that if we are editing the task - it should display it's text and status.
        if let goodToDo = incomingToDo {
            inserTaskTextField.text = goodToDo.toDoText
            isDoneSwitch.isOn = goodToDo.isDone
        }
    }
}

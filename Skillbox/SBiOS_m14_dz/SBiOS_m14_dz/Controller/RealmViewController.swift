//
//  RealmViewController.swift
//  SBiOS_m14_dz
//
//  Created by Dmitry Aksyonov on 11.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit
import RealmSwift

// MARK: - making global variables: Realm data model object and the Realm instance itself
var toDos: Results<ToDoObject>!
var realm = try! Realm()

class RealmViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var toDoTableView: UITableView! // tableView handling the task list
    
    var taskToEdit: Int?
    
    // MARK: - setting up the tableView and creating force reloading function
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoTableViewCell") as? ToDoCell
        let toDo = toDos[indexPath.row]
        
        // setup of labels - task text and completion status
        cell?.toDoTextLabel.text = toDo.toDoText
        cell?.isDoneTextLabel.text = toDo.isDone ? "Done" : "En Route"
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    // fancy animation for deletion of the task
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, view, completionHandler) in
            try! realm.write {
                realm.delete(toDos[indexPath.row])
            }
            self.toDoTableView.deleteRows(at: [indexPath], with: .automatic)
            completionHandler(true)
        }
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let editAction = UIContextualAction(style: .normal, title: "Edit") { (action, view, actionPerformed: (Bool) -> ()) in
            self.performSegue(withIdentifier: "cellClick", sender: indexPath.row)
            actionPerformed(true)
        }
        editAction.backgroundColor = .systemBlue
        return UISwipeActionsConfiguration(actions: [editAction])
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "cellClick", sender: indexPath.row)
    }
    
    // declaring force reloading of the tableView so that it can update itself with the freshly created task
    func reload() {
        toDoTableView.reloadData()
    }
    
    // MARK: - setting up the viewController - launch attributes and 'edit' logic (via segue)
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        toDos = realm.objects(ToDoObject.self)
        toDoTableView.dataSource = self
        toDoTableView.delegate = self
        reload()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        reload() // this is needed to update the controller whenever we come there from the outside (e.g. from the insertion viewController)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cellClick" {
            let destination = segue.destination as! InsertViewController
            if let index = sender as? Int {
                destination.incomingToDo = toDos[index]
            }
        }
    }
}

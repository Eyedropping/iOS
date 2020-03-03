//
//  ViewController.swift
//  SBiOS_m14_dz
//
//  Created by Dmitry Aksyonov on 11.02.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
// допилить удаление по свайпу - пока что не работает свайп и логика удаления непонятна - разгуглить надо

import UIKit
import CoreData

class CoreDataViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var cdTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cdTableView.dataSource = self
        cdTableView.register(UITableViewCell.self, forCellReuseIdentifier: "CoreDataCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "ToDoItem")
        
        do {
            tasks = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        
        
    }
    
    @IBAction func addTask(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Add a task", message: "Write something mindful", preferredStyle: .alert)
        let saveAction = UIAlertAction(title: "Save", style: .default) {
            [unowned self] action in
            guard let textField = alert.textFields?.first,
                let taskToSave = textField.text else {
                    return
            }
            self.saveTask(name: taskToSave)
            self.cdTableView.reloadData()
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        alert.addTextField()
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
    
    func saveTask(name: String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "ToDoItem", in: managedContext)!
        let task = NSManagedObject(entity: entity, insertInto: managedContext)
        
        task.setValue(name, forKeyPath: "title")
        
        do {
            try managedContext.save()
            tasks.append(task)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
    
    func deleteTask() {
        
    }
    
    var tasks = [NSManagedObject]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let task = tasks[indexPath.row]
        let cell = cdTableView.dequeueReusableCell(withIdentifier: "CoreDataCell", for: indexPath)
        cell.textLabel?.text = task.value(forKey: "title") as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                return
            }
            
            let managedContext = appDelegate.persistentContainer.viewContext
            let task = tasks[indexPath.row]
            managedContext.delete(task)
            tasks.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            try! managedContext.save()
            
            
        }
    }
    
    //    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    //        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, view, completionHandler ) in
    //            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
    //                return
    //            }
    //            let managedContext = appDelegate.persistentContainer.viewContext
    //            let objectForDeletion = self.tasks[indexPath.row] as NSManagedObject
    //            managedContext.delete(objectForDeletion)
    //        }
    //        self.cdTableView.deleteRows(at: [indexPath], with: .automatic)
    //        return UISwipeActionsConfiguration(actions: [deleteAction])
    //    }
    
}



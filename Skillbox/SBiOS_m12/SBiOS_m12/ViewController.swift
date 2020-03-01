//
//  ViewController.swift
//  SBiOS_m12
//
//  Created by Dmitry Aksyonov on 18.01.2020.
//  Copyright © 2020 Dmitry Aksyonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var categories: [Category] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CategoriesLoader().loadCategories { categories in
            self.categories = categories
            self.tableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as! CategoryCell
        
        let model = categories[indexPath.row]
        cell.categoryNameLabel.text = model.name
        cell.categorySortOrderLabel.text = "\(model.sortOrder)"
        return cell
    }
}

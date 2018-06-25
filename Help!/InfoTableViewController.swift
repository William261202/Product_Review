//
//  TableViewController.swift
//  Help!
//
//  Created by Thiha Yeyint Aung on 6/16/18.
//  Copyright © 2018 William. All rights reserved.
//

import UIKit
import RealmSwift

class InfoTableViewController: UITableViewController {

    let realm = try! Realm()
    
    var categories : Results<CategoryModel>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    // MARK: - TableView DataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return categories?.count ?? 1
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "goToDetail", for: indexPath)
        
        if let category = categories?[indexPath.row]{
        
            cell.textLabel?.text = category.name
            
        }
        
        return cell
            
    }
    
    //MARK: - TableView Delegate Method
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "goToDetail", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! DetailViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            
            destinationVC.selectedCategory = categories?[indexPath.row]
            
        }
    }
    
    //MARK: - Data Manipulation Method
    
    func save(category: CategoryModel) {
        do {
            try realm.write {
                realm.add(category)
                }
            } catch {
                print("Error saving realm, \(error)")
            }
        self.tableView.reloadData()
        }
    
}


//
//  ViewController.swift
//  Rodrigues_Groceries
//
//  Created by Vinicius Rodrigues on 11/26/24.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryNames.count // Return the number of categories
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a cell
        let cell = categoryTableViewOL.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        
        // Populate a cell
        cell.textLabel?.text = categoryNames[indexPath.row].capitalized
        
        // Return the cell
        return cell
    }
    
    @IBOutlet weak var categoryTableViewOL: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set the delegate and data source for the table view
        categoryTableViewOL.delegate = self
        categoryTableViewOL.dataSource = self
        
        self.title = "Categories" // Set the view title to "Categories"
    }
    
    // Prepare for segue to pass selected category name and index to the next view controller (GroceriesViewController)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "groceriesSegue" {
            let destination = segue.destination as! GroceriesViewController
            
            destination.categoryName = categoryNames[(categoryTableViewOL.indexPathForSelectedRow?.row)!]
            destination.categoryIndex = (categoryTableViewOL.indexPathForSelectedRow?.row)!
        }
    }
}

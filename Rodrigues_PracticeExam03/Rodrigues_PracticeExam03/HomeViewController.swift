//
//  ViewController.swift
//  Rodrigues_PracticeExam03
//
//  Created by Vinicius Rodrigues on 12/1/24.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ContactsList.count // Return the number of contacts
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a cell
        let cell = TableViewOL.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        // Populate a cell
        let contact = ContactsList[indexPath.row]
        cell.textLabel?.text = "\(contact.FirstName) \(contact.LastName)"
        
        // Return cell
        return cell
    }
    
    
    @IBOutlet weak var TableViewOL: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set the delegate and data source for the table view
        TableViewOL.delegate = self
        TableViewOL.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "ContactSegue" {
            let destination = segue.destination as! profileViewController
            
            destination.contact = ContactsList[(TableViewOL.indexPathForSelectedRow?.row)!]
        }
    }
}


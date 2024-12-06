//
//  ViewController.swift
//  TableViewContactList
//
//  Created by Vinicius Rodrigues on 11/14/24.
//

import UIKit

class Contact {
    var name: String?
    var department: String?
    var phoneNum: String?
    var office: String?
    
    init(name: String? = nil, department: String? = nil, phoneNum: String? = nil, office: String? = nil) {
        self.name = name
        self.department = department
        self.phoneNum = phoneNum
        self.office = office
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count  // Return the number of records
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a cell
        let cell = tableViewOL.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        
        // Populate a cell
        cell.textLabel?.text = contacts[indexPath.row].name
        
        // Return the cell
        return cell
    }
        
    
    // Create Contacts array
    var contacts = [Contact]()
    
    @IBOutlet weak var tableViewOL: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOL.delegate = self
        tableViewOL.dataSource = self
        
        let c1 = Contact(name: "Ajay Bandit", department: "Computer Science", phoneNum: "660.111.2233", office: "CH 2250")
        contacts.append(c1)
        
        let c2 = Contact(name: "Robert Voss", department: "History", phoneNum: "660.525.1981", office: "VLK 107")
        contacts.append(c2)
        
        let c3 = Contact(name: "Amit Patel", department: "Geography", phoneNum: "789.123.4567", office: "VLK 234")
        contacts.append(c3)
        
        let c4 = Contact(name: "Brenda Rourke", department: "Communications", phoneNum: "664.123.6543", office: "WH 37")
        contacts.append(c4)
        
        // Sort the contacts
        contacts.sort{ ($0.name ?? "") < ($1.name ?? "") }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "resultSegue" {
            let destination = segue.destination as! ResultViewController
            
            // Assign the selected row contact to the destination (Result View)
            destination.contact = contacts[(tableViewOL.indexPathForSelectedRow?.row)!]
        }
    }
}


//
//  ViewController.swift
//  Rodrigues_Exam03
//
//  Created by Vinicius Rodrigues on 12/3/24.
//

import UIKit

class RodriguesHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count // Return the numbers of games
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a cell
        let cell = RodriguesTVOL.dequeueReusableCell(withIdentifier: "rodriguesCell", for: indexPath)
        
        // Populate a cell
        cell.textLabel?.text = games[indexPath.row].name
        
        // Return cell
        return cell
    }
    
    @IBOutlet weak var RodriguesTVOL: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set the delegate and data source for the table view
        RodriguesTVOL.delegate = self
        RodriguesTVOL.dataSource = self
        
        // Sort the games in alphabetical order
        games.sort{ ($0.name ?? "") < ($1.name ?? "") }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "rodriguesDescriptionSegue" {
            let destination = segue.destination as! RodriguesGameController
            
            destination.game = games[(RodriguesTVOL.indexPathForSelectedRow?.row)!]
        }
    }
}


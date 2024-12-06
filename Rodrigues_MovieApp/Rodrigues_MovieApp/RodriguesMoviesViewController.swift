//
//  RodriguesMoviesViewController.swift
//  Rodrigues_MovieApp
//
//  Created by Vinicius Rodrigues on 11/18/24.
//

import UIKit

class RodriguesMoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesInfo.count // Return the number of genres
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a cell
        let cell = moviesTableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
        
        // Populate a cell
        cell.textLabel?.text = moviesInfo[indexPath.row].genre
        
        // Return the cell
        return cell
    }
        
    @IBOutlet weak var moviesTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Genres" // Set view title to "Genres"
        
        // Set the delegate and data source for the table view
        moviesTableView.delegate = self
        moviesTableView.dataSource = self
        
        // Sort moviesInfo by genre
        moviesInfo.sort{ ($0.genre) < ($1.genre) }
    }
    
    // Prepare for segue to pass selected genre data to the next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "listsSegue" {
            let destination = segue.destination as! MovieListViewController
            
            // Assign the selected row of moviesInfo to the destination (MovieListViewController)
            destination.moviesInfo = moviesInfo[(moviesTableView.indexPathForSelectedRow?.row)!]
        }
    }


}


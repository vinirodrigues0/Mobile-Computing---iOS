//
//  MovieListViewController.swift
//  Rodrigues_MovieApp
//
//  Created by Vinicius Rodrigues on 11/18/24.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (moviesInfo?.list_Array.count)! // Return the number of movies in the selected genre
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a cell
        let cell = movieListTableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        
        // Populate a cell
        cell.textLabel?.text = moviesInfo?.list_Array[indexPath.row].movieName
        
        // Return the cell
        return cell
    }
    
    
    @IBOutlet weak var movieListTableView: UITableView!
    
    var moviesInfo: Movies?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "\(moviesInfo?.genre ?? "")" // Set the view title to the selected genre
        
        // Set the delegate and data source for the table view
        movieListTableView.delegate = self
        movieListTableView.dataSource = self
        
    }
    
    // Prepare for segue to pass selected movie data to the next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "movieInfoSegue" {
            let destination = segue.destination as! MovieInfoViewController
            
            // Assign the selected row of moviesInfo to the destination (MovieInfoViewController)
            destination.moviesInfo = moviesInfo?.list_Array[(movieListTableView.indexPathForSelectedRow?.row)!]
        }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

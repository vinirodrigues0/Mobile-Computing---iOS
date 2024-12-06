//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Vinicius Rodrigues on 11/19/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Create a cell
        let cell = collectionViewOL.dequeueReusableCell(withReuseIdentifier: "reusableMovieCell", for: indexPath) as! MovieCollectionViewCell
        
        // Populate a cell
        cell.assignMovie(with: movies[indexPath.row])
        
        // Return cell
        return cell
    }
    
    // We are using this to display the selected movie
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignMovieDetails(index: indexPath)
    }
    
    func assignMovieDetails(index: IndexPath) {
        titleOL.text = "\(movies[index.row].title)"
        yearReleasedOL.text = "\(movies[index.row].releasedYear)"
        movieRatingOL.text = "\(movies[index.row].movieRating)"
        boxOfficeOL.text = "\(movies[index.row].boxOffice)"
    }
    
    @IBOutlet weak var collectionViewOL: UICollectionView!

    @IBOutlet weak var titleOL: UILabel!
    
    @IBOutlet weak var yearReleasedOL: UILabel!
    
    @IBOutlet weak var movieRatingOL: UILabel!
    
    @IBOutlet weak var boxOfficeOL: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionViewOL.delegate = self
        collectionViewOL.dataSource = self
    }


}


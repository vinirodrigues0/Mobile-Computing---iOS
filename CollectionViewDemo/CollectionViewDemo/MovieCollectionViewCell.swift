//
//  MovieCollectionViewCell.swift
//  CollectionViewDemo
//
//  Created by Vinicius Rodrigues on 11/19/24.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    func assignMovie(with movie: Movie) {
        imageViewOutlet.image = movie.image
    }
}

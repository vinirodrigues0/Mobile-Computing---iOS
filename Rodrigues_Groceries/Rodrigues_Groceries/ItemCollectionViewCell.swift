//
//  ItemCollectionViewCell.swift
//  Rodrigues_Groceries
//
//  Created by Vinicius Rodrigues on 11/26/24.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    func assignItem(with item: Item) {
        imageViewOL.image = item.image
    }
}

//
//  GroceriesViewController.swift
//  Rodrigues_Groceries
//
//  Created by Vinicius Rodrigues on 11/26/24.
//

import UIKit

class GroceriesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allCategories[categoryIndex].count // Return the number of items inside the selected category
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Create a cell
        let cell = itemCollectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! ItemCollectionViewCell
        
        // Populate a cell
        cell.assignItem(with: allCategories[categoryIndex][indexPath.row])
        
        // Return cell
        return cell
    }
    
    // Using this to display details of the selected item
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignItemDetails(itemIndex: indexPath)
    }
    
    func assignItemDetails(itemIndex: IndexPath) {
        item = allCategories[categoryIndex][itemIndex.row] // item gets details of selected item from selected category
        
        // Display details for the selected item
        itemNameLabel.text = "Product Name: \(item.itemName)"
        itemPriceLabel.text = "Price: $\(item.itemPrice)"
        itemExpireLabel.text = "Expires on: \(item.itemExpiry)"
        itemDescriptionLabel.text = "Description: \(item.itemDescription)"
        itemQuantityLabel.text = "Quantity: \(item.itemQuantity)"
        itemOriginLabel.text = "Origin: \(item.itemOrigin)"
    }
    
    @IBOutlet weak var itemCollectionView: UICollectionView!
    
    @IBOutlet weak var itemNameLabel: UILabel!
    
    @IBOutlet weak var itemPriceLabel: UILabel!
    
    @IBOutlet weak var itemExpireLabel: UILabel!
    
    @IBOutlet weak var itemDescriptionLabel: UILabel!
    
    @IBOutlet weak var itemQuantityLabel: UILabel!
    
    @IBOutlet weak var itemOriginLabel: UILabel!
    
    // Initialize variables (categoryName, categoryIndex, item)
    var categoryName = ""
    var categoryIndex = 0
    var item: Item!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = categoryName.capitalized // Set the view title to the selected category name
        
        // Set the delegate and data source for the collection view
        itemCollectionView.delegate = self
        itemCollectionView.dataSource = self
        
        // Once screen loads, show details of first item from selected category
        item = allCategories[categoryIndex][0] // item gets details of first item from selected category
        
        // Display details for the first item
        itemNameLabel.text = "Product Name: \(item.itemName)"
        itemPriceLabel.text = "Price: $\(item.itemPrice)"
        itemExpireLabel.text = "Expires on: \(item.itemExpiry)"
        itemDescriptionLabel.text = "Description: \(item.itemDescription)"
        itemQuantityLabel.text = "Quantity: \(item.itemQuantity)"
        itemOriginLabel.text = "Origin: \(item.itemOrigin)"
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

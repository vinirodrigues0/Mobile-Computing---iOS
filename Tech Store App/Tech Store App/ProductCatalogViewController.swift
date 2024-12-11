//
//  ProductCatalogViewController.swift
//  Tech Store App
//
//  Created by Vinicius Rodrigues on 11/16/24.
//

import UIKit

// Custom UICollectionViewCell class to define outlets for product details in each cell
class ProductCatalogViewCell: UICollectionViewCell {
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
}

// A class to represent the details of a product (image, name, and price)
class Product {
    var image: String?
    var productName: String?
    var price: Int?
    var rating: String?
    var description: String?
    
    init(image: String? = nil, productName: String? = nil, price: Int? = nil, rating: String? = nil, description: String? = nil) {
        self.image = image
        self.productName = productName
        self.price = price
        self.rating = rating
        self.description = description
    }
}

class ProductCatalogViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count // Return the number of products in the catalog
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Create a cell
        let cell = collectionViewOL.dequeueReusableCell(withReuseIdentifier: "reusableCell", for: indexPath) as! ProductCatalogViewCell
        
        // Populate a cell
        let product = products[indexPath.item]
        cell.productImageView.image = UIImage(named: product.image!)
        cell.productNameLabel.text = product.productName
        cell.productPriceLabel.text = "$\(product.price!)"
        
        // Return the cell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedProduct = products[indexPath.item]
        
        performSegue(withIdentifier: "catalogToDescriptionSegue", sender: selectedProduct)
    }

    @IBOutlet weak var collectionViewOL: UICollectionView!
    
    // Array of products to display in the collection view
    // We can add as many products as we want because we can scroll in the collection view
    var products = [
        Product(image: "iphone 16", productName: "iPhone 16", price: 800, rating: "★★★★☆", description: "iPhone 16 is built for Apple Intelligence, the personal intelligence system that helps you write, express yourself, and get things done effortlessly. With groundbreaking privacy protections, it gives you peace of mind that no one else can access your data — not even Apple."),
        Product(image: "macbook pro", productName: "MacBook Pro", price: 2000, rating: "★★★★★", description: "The MacBook Pro is a powerful and versatile laptop designed for professionals and creative individuals. With its stunning Retina display, blazing-fast performance, and long-lasting battery life, you can work, create, and play at your best. It's equipped with the latest Apple silicon chips, providing seamless multitasking and incredible speed."),
        Product(image: "playstation 5", productName: "PlayStation 5", price: 500, rating: "★★★★☆", description: "The PlayStation 5 is a next-generation gaming console that delivers stunning visuals, immersive sound, and lightning-fast load times. Experience the power of the PlayStation 5 with exclusive titles, breathtaking graphics, and innovative gameplay."),
        Product(image: "beats solo 4", productName: "Beats Solo 4", price: 130, rating: "★★★☆☆", description: "The Beats Solo 4 headphones deliver powerful, balanced sound with personalized spatial audio for an immersive listening experience. With up to 40 hours of battery life and fast charging, you can enjoy your music, movies, and games all day long."),
        Product(image: "garmin vivoactive 5", productName: "Garmin Vivoactive 5", price: 200, rating: "★★★★☆", description: "The Garmin Vivoactive 5 is a stylish and functional smartwatch that helps you stay active and connected. Track your workouts, monitor your heart rate, and receive smart notifications, all while looking great."),
        Product(image: "samsung tv", productName: "Samsung TV", price: 1580, rating: "★★★★☆", description: "Samsung TV Class QLED 4K QE1D offer stunning picture quality, smart features, and sleek design. With advanced technologies like QLED, you can enjoy vibrant colors, deep blacks, and crystal-clear details."),
        Product(image: "meta quest", productName: "Meta Quest 3S", price: 300, rating: "★★★★☆", description: "The Meta Quest 3s is a cutting-edge virtual reality headset that transports you to immersive worlds. Experience realistic graphics, intuitive controls, and a wide range of exciting VR experiences."),
        Product(image: "go pro", productName: "GoPro HERO 13", price: 340, rating: "★★★★★", description: "The GoPro HERO 13 is a rugged and versatile action camera that captures stunning 5K video and high-resolution photos. With advanced stabilization, water resistance, and a variety of mounting options, you can capture your adventures in stunning detail."),
        Product(image: "xbox one", productName: "Xbox One", price: 250, rating: "★★★☆☆", description: "The Xbox One is a powerful gaming console that offers a wide range of gaming experiences, including exclusive titles, online multiplayer, and 4K gaming. It also serves as a multimedia hub, allowing you to stream movies, TV shows, and music.")
    ]
    
    var users = [User]()
    var index = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set the delegate and data source of the collection view
        collectionViewOL.delegate = self
        collectionViewOL.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "catalogToDescriptionSegue" {
            let destination = segue.destination as! ProductDescriptionViewController
            
            if let selectedProduct = sender as? Product {
                destination.product = selectedProduct
                destination.users = users
                destination.index = index
            }
        }
        else if transition == "catalogToCartSegue" {
            let destination = segue.destination as! CartViewController
            
            destination.users = users
            destination.index = index
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "catalogToDescriptionSegue" {
            // Block the automatic segue
            return false
        }
        return true
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

//
//  ProductDescriptionViewController.swift
//  Tech Store App
//
//  Created by Vinicius Rodrigues on 11/17/24.
//

import UIKit

class ProductDescriptionViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    @IBOutlet weak var productNameOL: UILabel!
    @IBOutlet weak var priceOL: UILabel!
    @IBOutlet weak var ratingOL: UILabel!
    @IBOutlet weak var descriptionOL: UITextView!
    
    var product: Product?
    var users = [User]()
    var index = Int()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
        imageViewOL.image = UIImage(named: "\(product?.image ?? "")")
        productNameOL.text = product?.productName
        priceOL.text = "$\(product!.price!)"
        ratingOL.text = product?.rating
        descriptionOL.text = product?.description
    }
    
    // Once "Add to Cart" button is clicked, append the selected product to the cart of current user
    @IBAction func addToCartBtnClicked(_ sender: UIButton) {
        users[index].cart.append(product!)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "descriptionToCartSegue" {
            let destination = segue.destination as! CartViewController
            
            destination.users = users
            destination.index = index
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

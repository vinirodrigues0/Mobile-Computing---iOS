//
//  ReceiptViewController.swift
//  Tech Store App
//
//  Created by Vinicius Rodrigues on 11/17/24.
//

import UIKit

class ReceiptViewController: UIViewController {
    
    @IBOutlet weak var paymentStatusOL: UILabel!
    
    @IBOutlet weak var transactionIdOL: UILabel!
    
    @IBOutlet weak var nameOL: UILabel!
    
    @IBOutlet weak var productsBoughtOL: UILabel!
    
    @IBOutlet weak var totalPriceOL: UILabel!
    
    @IBOutlet weak var deliveryOrPickupLocation: UILabel!
    
    var totalPrice = 0
    var streetAddress = ""
    var city = ""
    var state = ""
    var zipCode = ""
    var preferredLocation = ""
    var paymentMethod = ""
    var name = ""
    var cart = [Product]()
    var deliveryOrPickup = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        let transactionID = Int.random(in: 1000000 ... 29148984)
        
        paymentStatusOL.text = "Payment method (\(paymentMethod)):\nAccepted! ✅😀"
        transactionIdOL.text = "Transaction ID: \(transactionID)"
        nameOL.text = "Name: \(name)"
        
        for product in cart {
            productsBoughtOL.text! += "\n\(product.productName!)"
        }
        
        totalPriceOL.text = "Total Price: $\(totalPrice)"
        
        if deliveryOrPickup == 0 {
            deliveryOrPickupLocation.text = "Street Address: \n\(streetAddress)\n \(city) \(state)\n \(zipCode)"
        }
        else {
            deliveryOrPickupLocation.text = "Pickup Location: \n\(preferredLocation)"
        }
        // Do any additional setup after loading the view.
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

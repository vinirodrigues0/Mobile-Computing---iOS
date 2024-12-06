//
//  ViewController.swift
//  MultipleViewControllers
//
//  Created by Vinicius Rodrigues on 10/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountOL: UITextField!
    
    @IBOutlet weak var discountOL: UITextField!
    
    // Initialize variables
    var amount = 0.0
    var discount = 0.0
    var finalPrice = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBtnClicked(_ sender: UIButton) {
        
        // Read amount and discount rates
        amount = Double(amountOL.text!)!
        discount = Double(discountOL.text!)!
        
        // Calculate the price after discount
        finalPrice += amount - amount * discount / 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Create transition
        var transition = segue.identifier
        
        if transition == "resultSegue" {
            // We need to create a destination
            var destination = segue.destination as! ResultViewController
            
            // Assigning values to ResultViewController 
            destination.amount = amountOL.text!
            destination.discount = discountOL.text!
            destination.finalPrice = String(finalPrice)
        }
    }
    
}


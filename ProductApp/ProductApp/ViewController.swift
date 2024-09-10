//
//  ViewController.swift
//  ProductApp
//
//  Created by Vinicius Rodrigues on 9/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var num1OL: UITextField!
    
    @IBOutlet weak var num2OL: UITextField!
    
    @IBOutlet weak var displayLabelOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sbtButtonClicked(_ sender: UIButton) {
        // Read the first number and convert to Int
        var num1 = Int(num1OL.text!)
        
        // Read the second number and convert to Int
        var num2 = Int(num2OL.text!)
        
        // Calculate the product
        var product = num1! * num2!
        
        // Assign it to display variable
        displayLabelOL.text = "The product of \(num1!) and \(num2!) is: \(product)"
        
        
        
    }
    
}


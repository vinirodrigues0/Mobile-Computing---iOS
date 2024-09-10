//
//  ViewController.swift
//  Discount App
//
//  Created by Vinicius Rodrigues on 9/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnClicked(_ sender: Any) {
        // Read the input and convert to a Double. And initialize the discount variable
        var input = Double(inputOL.text!)
        var discount = Double(0)
        var finalValue = Double(0)
        
        // Check what discount percentage you qualify for
        if (input! >= 0 && input! <= 50) {  // 10% discount
            discount = input! * 0.1
            finalValue = input! - discount
            outputOL.text = "You received 10% discount on the amount \(input!). The discount value is \(discount). The final value is \(finalValue) 😀."
        }
        else if (input! >= 51 && input! <= 100) {   // 20% discount
            discount = input! * 0.2
            finalValue = input! - discount
            outputOL.text = "You received 20% discount on the amount \(input!). The discount value is \(discount). The final value is \(finalValue) 😃."
        }
        else if (input! >= 101 && input! <= 150) {   // 30% discount
            discount = input! * 0.3
            finalValue = input! - discount
            outputOL.text = "You received 30% discount on the amount \(input!). The discount value is \(discount). The final value is \(finalValue) 😄."
        }
        
    }
    

}


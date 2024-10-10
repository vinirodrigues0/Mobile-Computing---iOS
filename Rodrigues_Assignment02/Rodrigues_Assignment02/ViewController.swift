//
//  ViewController.swift
//  Rodrigues_Assignment02
//
//  Created by Vinicius Rodrigues on 9/11/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var billAmountOutlet: UITextField!
    
    @IBOutlet weak var tipPercentageOutlet: UITextField!
    
    @IBOutlet weak var dateOutlet: UIDatePicker!
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var billAmountLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Button that generates a receipt
    @IBAction func SubmitBTN(_ sender: UIButton) {
        // Read the name, billAmount, tipAmount, and date labels
        let nameLabel = nameLabel.text!
        let billAmountLabel = billAmountLabel.text!
        let tipAmountLabel = tipAmountLabel.text!
        let dateLabel = dateLabel.text!
        
        // Read the date input and format it
        var date = dateOutlet.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy hh:mm:ss"
        dateFormatter.timeZone = TimeZone(identifier: "America/Chicago")
        
        // Read the name, billAmount, and tipPercentage input
        var name = nameOutlet.text!
        var billAmount = Double(billAmountOutlet.text!)
        var tipPercentage = Double(tipPercentageOutlet.text!)
        
        // Check if the billAmount is >= than 500, if it is apply $50 discount
        if (billAmount! >= 500) {
            billAmount! -= 50
        }
        
        // Calculate the tipAmount and totalAmount
        var tipAmount = Double((billAmount! * tipPercentage!) / 100)
        var totalAmount = billAmount! + tipAmount
        
        // Output text to the screen
        outputOL.text = "                \(dateFormatter.string(from: date)) \n\n\(nameLabel) \(name) \n\n\(billAmountLabel) $\(String(format: "%.2f", billAmount!)) \n\nTip Amount:  $\(String(format: "%.2f", tipAmount)) \n\nTotal Amount: $\(String(format: "%.2f", totalAmount))"
        
    }
    
    // Button that resets all the text fields and the output label
    @IBAction func ResetBTN(_ sender: UIButton) {
        nameOutlet.text = ""
        billAmountOutlet.text = ""
        tipPercentageOutlet.text = ""
        outputOL.text = ""
        
        // Move the cursor to the first text field (nameOutlet)
        nameOutlet.becomeFirstResponder()
    }
    

}


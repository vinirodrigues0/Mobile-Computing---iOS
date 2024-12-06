//
//  ResultViewController.swift
//  MultipleViewControllers
//
//  Created by Vinicius Rodrigues on 10/24/24.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var amountLabelOL: UILabel!
    
    @IBOutlet weak var discountLabelOL: UILabel!
    
    @IBOutlet weak var finalPriceLabelOL: UILabel!
    
    // Initialize variables
    var amount = ""
    var discount = ""
    var finalPrice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Display the amount, discount, and finalPrice on their respective label
        amountLabelOL.text! += " $" + amount
        discountLabelOL.text! += discount
        finalPriceLabelOL.text! += finalPrice
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

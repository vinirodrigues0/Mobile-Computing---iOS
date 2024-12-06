//
//  RodriguesResultViewController.swift
//  Rodrigues_Exam02
//
//  Created by Vinicius Rodrigues on 11/7/24.
//

import UIKit

class RodriguesResultViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var customerNameOL: UILabel!
    
    @IBOutlet weak var paymentHistoryRatingOL: UILabel!
    
    @IBOutlet weak var creditUtilizationScoreOL: UILabel!
    
    @IBOutlet weak var creditScoreOL: UILabel!
    
    @IBOutlet weak var resultOL: UILabel!
    
    @IBOutlet weak var creditScopeOL: UILabel!
    
    var imageName = ""
    var customerName = ""
    var phRating = 0.0
    var cuScore = 0.0
    var creditScore = 0.0
    var result = ""
    var creditScope = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if phRating >= 0 && phRating <= 550 && cuScore >= 0 && cuScore <= 458 {
            
            
            UIView.animate(withDuration: 2, delay: 5, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
                self.imageViewOL.image = UIImage(named: self.imageName)
            })
            
            customerNameOL.text = "Customer Name: \(customerName)"
            paymentHistoryRatingOL.text = "Payment History Rating: \(String(format: "%.0f", phRating))"
            creditUtilizationScoreOL.text = "Credit Utilization Score: \(String(format: "%.0f", cuScore))"
            creditScoreOL.text = "Credit Score: \(String(format: "%.0f", creditScore))"
            resultOL.text = "Result: \(result)"
            creditScopeOL.text = "Credit Scope: \(creditScope)"
        }
        else {
            customerNameOL.text = "Invalid‼️. Please enter the values for Payment history and Credit utilization between 0-550 and 0-458 respectively."
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

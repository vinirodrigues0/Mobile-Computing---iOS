//
//  ViewController.swift
//  Rodrigues_Exam02
//
//  Created by Vinicius Rodrigues on 11/7/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var customerNameOL: UITextField!
    
    @IBOutlet weak var paymentHistoryRatingOL: UITextField!
    
    @IBOutlet weak var creditUtilizationOL: UITextField!
    
    @IBOutlet weak var computeCreditScoreBtn: UIButton!
    
    @IBOutlet weak var resetBtn: UIButton!
    
    var customerName = ""
    var phRating = 0.0
    var creditUtilization = 0.0
    var creditScore = 0.0
    var result = ""
    var creditScope = ""
    var imageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        computeCreditScoreBtn.isEnabled = false
        resetBtn.isEnabled = false
    }
    
    @IBAction func creditUtilizationEditingChanged(_ sender: UITextField) {
        if !customerNameOL.text!.isEmpty && !paymentHistoryRatingOL.text!.isEmpty && !creditUtilizationOL.text!.isEmpty {
            computeCreditScoreBtn.isEnabled = true
            resetBtn.isEnabled = true
        }
    }
    
    @IBAction func computeCreditScoreBtnClicked(_ sender: UIButton) {
        
        customerName = customerNameOL.text!
        phRating = Double(paymentHistoryRatingOL.text!)!
        creditUtilization = Double(creditUtilizationOL.text!)!
        
        creditScore = 300 + (0.583 * phRating) + (0.5 * creditUtilization)
        
        if creditScore >= 300 && creditScore <= 579 {
            result = "Poor"
            imageName = "Poor"
            creditScope = "The lowest category, indicating significant credit risk. Borrowers in this range may have a history of missed payments, high utilization, or other negative factors. They often find it challenging to obtain credit and may be subject to very high interest rates if they do qualify %⤴️⤴️⤴️🛑⚠️⚠️."
        }
        else if creditScore <= 669 {
            result = "Fair"
            imageName = "Fair"
            creditScope = "This range indicates higher credit risk. People with scores in this range may have had missed payments or higher credit utilization. They may qualify for credit, but it usually comes with higher interest rates or less favorable terms %⤴️⤴️⚠️🟡."
        }
        else if creditScore <= 739 {
            result = "Good"
            imageName = "Good"
            creditScope = "This is considered an acceptable credit score range. People with scores in this range are generally approved for credit but may not receive the lowest interest rates 💳."
        }
        else if creditScore <= 799 {
            result = "Very Good"
            imageName = "Very Good"
            creditScope = "Still a very desirable range with minimal risk. Borrowers with scores in this category are likely to qualify for favorable rates and terms 💸."
        }
        else if creditScore <= 850 {
            result = "Excellent"
            imageName = "Excellent"
            creditScope = "Individuals in this range are considered to be at the lowest risk. They have a history of making payments on time and keeping credit utilization low. They’re eligible for the best interest rates and credit products 🏦 🏦✅."
        }
        
        customerNameOL.text = ""
        paymentHistoryRatingOL.text = ""
        creditUtilizationOL.text = ""
        
        customerNameOL.becomeFirstResponder()
        
        computeCreditScoreBtn.isEnabled = false
        resetBtn.isEnabled = false
        
    }
    
    @IBAction func resetBtnClicked(_ sender: UIButton) {
        
        customerNameOL.text = ""
        paymentHistoryRatingOL.text = ""
        creditUtilizationOL.text = ""
        
        customerNameOL.becomeFirstResponder()
        
        computeCreditScoreBtn.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "resultSegue" {
            let destination = segue.destination as! RodriguesResultViewController
            
            destination.imageName = imageName
            destination.customerName = customerName
            destination.phRating = phRating
            destination.cuScore = creditUtilization
            destination.creditScore = creditScore
            destination.result = result
            destination.creditScope = creditScope
        }
    }
}

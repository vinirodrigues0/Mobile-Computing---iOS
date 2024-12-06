//
//  ViewController.swift
//  Rodrigues_PracticeExam02
//
//  Created by Vinicius Rodrigues on 11/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loanTypeOL: UITextField!
    
    @IBOutlet weak var loanAmountOL: UITextField!
    
    @IBOutlet weak var interestRateOL: UITextField!
    
    @IBOutlet weak var termOL: UITextField!
    
    @IBOutlet weak var calculateEMIBtn: UIButton!
    
    @IBOutlet weak var resetBtn: UIButton!
    
    var totalMonths = 0.00
    var monthlyInterestRate = 0.00
    var monthlyEMIPayment = 0.00
    var loanType = ""
    var loanAmount = 0.00
    var interestRate = 0.00
    var term = 0.00
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        calculateEMIBtn.isEnabled = false
        resetBtn.isEnabled = false
    }
    
    @IBAction func termEditingChnaged(_ sender: Any) {
        if !loanTypeOL.text!.isEmpty && !loanAmountOL.text!.isEmpty && !interestRateOL.text!.isEmpty && !termOL.text!.isEmpty {
            calculateEMIBtn.isEnabled = true
            resetBtn.isEnabled = true
        }
    }
    
    
    @IBAction func calculateEMIBtnClicked(_ sender: UIButton) {
        loanType = loanTypeOL.text!
        loanAmount = Double(loanAmountOL.text!)!
        interestRate = Double(interestRateOL.text!)!
        term = Double(termOL.text!)!
        
        
        totalMonths = term * 12
        monthlyInterestRate = (interestRate / 12) / 100
        monthlyEMIPayment = loanAmount * (monthlyInterestRate * pow(1 + monthlyInterestRate,totalMonths)) / (pow(1 + monthlyInterestRate,totalMonths) - 1)
        
        loanTypeOL.text = ""
        loanAmountOL.text = ""
        interestRateOL.text = ""
        termOL.text = ""
        
        loanTypeOL.becomeFirstResponder()
        
        calculateEMIBtn.isEnabled = false
        resetBtn.isEnabled = false
    }
    
    @IBAction func resetBtnClicked(_ sender: UIButton) {
        loanTypeOL.text = ""
        loanAmountOL.text = ""
        interestRateOL.text = ""
        termOL.text = ""
        
        loanTypeOL.becomeFirstResponder()
        
        calculateEMIBtn.isEnabled = false
        resetBtn.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "calculateEMISegue" {
            let destination = segue.destination as! Result_View_Controller
            
            destination.loanType = loanType
            destination.loanAmount = loanAmount
            destination.interestRate = interestRate
            destination.monthlyEMI = monthlyEMIPayment
        }
    }
    
}

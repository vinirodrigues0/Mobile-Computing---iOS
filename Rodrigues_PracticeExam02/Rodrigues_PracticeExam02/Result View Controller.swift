//
//  Result View Controller.swift
//  Rodrigues_PracticeExam02
//
//  Created by Vinicius Rodrigues on 11/5/24.
//

import UIKit

class Result_View_Controller: UIViewController {
    
    @IBOutlet weak var loanTypeOL: UILabel!
    
    @IBOutlet weak var enteredLoanAmountOL: UILabel!
    
    @IBOutlet weak var enteredInterestRateOL: UILabel!
    
    @IBOutlet weak var calculatedMonthlyEMIOL: UILabel!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    var loanType = ""
    var loanAmount = 0.00
    var interestRate = 0.00
    var monthlyEMI = 0.00
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        loanTypeOL.text! += loanType
        enteredLoanAmountOL.text! += String(format: "%.0f", loanAmount)
        enteredInterestRateOL.text! += "\(interestRate)%"
        calculatedMonthlyEMIOL.text! += String(format: "%.2f", monthlyEMI)
        
        // Display the image and use shake me function
        imageViewOL.image = UIImage(named: loanType)
        
        var width = imageViewOL.frame.width
        var height = imageViewOL.frame.height
        
        width += 20
        height += 20
        
        let x = imageViewOL.frame.origin.x - 20
        let y = imageViewOL.frame.origin.y - 20
        
        let largeFrame = CGRect(x: x, y: y, width: width, height: height)
        
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50 ,animations: {
            self.imageViewOL.frame = largeFrame
        })
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

//
//  ResultViewController.swift
//  BMI App
//
//  Created by Vinicius Rodrigues on 10/29/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var heightLabelOL: UILabel!
    
    @IBOutlet weak var weightLabelOL: UILabel!
    
    @IBOutlet weak var BMILabelOL: UILabel!
    
    @IBOutlet weak var messageLabelOL: UILabel!
   
    @IBOutlet weak var imageViewOL: UIImageView!
    
    var bmiValue = 0.0
    var message = ""
    var image = ""
    var height = 0.0
    var weight = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        heightLabelOL.text! += String(height)
        weightLabelOL.text! += String(weight)
        BMILabelOL.text! += String(format: "%.2f", bmiValue)
        messageLabelOL.text! += message
        imageViewOL.image = UIImage(named: image)
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

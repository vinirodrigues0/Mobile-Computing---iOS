//
//  ViewController.swift
//  BMI App
//
//  Created by Vinicius Rodrigues on 10/29/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightOL: UITextField!
    
    @IBOutlet weak var weightOL: UITextField!
    
    var height = 0.0
    var weight = 0.0
    var bmi = 0.0
    var image = ""
    var result = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateBtnClicked(_ sender: UIButton) {
        
        height = Double(heightOL.text!)!
        weight = Double(weightOL.text!)!
        
        bmi = (703 * weight) / (height * height)
        
        if (bmi < 18.5) {
            image = "underweight"
            result = "Underweight"
            }
        else if (bmi < 25){
            image = "normal"
            result = "Normal"
        }
        else if (bmi < 30){
            image = "overweight"
            result = "Overweight"
        }
        else {
            image = "obese"
            result = "Obese"

        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Create transition
        let transition = segue.identifier
        
        if transition == "BMISegue" {
            // We need to create a destination
            let destination = segue.destination as! ResultViewController
            
            // Assigning values to ResultViewController
            destination.image = image
            destination.message = result
            destination.bmiValue = bmi
            destination.height = height
            destination.weight = weight
        }
    }
    


}


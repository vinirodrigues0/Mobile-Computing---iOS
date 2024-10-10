//
//  ViewController.swift
//  Rodrigues_PracticeExam01
//
//  Created by Vinicius Rodrigues on 9/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightFeetOL: UITextField!
    
    @IBOutlet weak var heightInchesOL: UITextField!
    
    @IBOutlet weak var weightOL: UITextField!
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBtnClicked(_ sender: UIButton) {
        var heightFeet = Double(heightFeetOL.text!)
        var heightInches = Double(heightInchesOL.text!)
        var weight = Double(weightOL.text!)
        
        var height = (heightFeet! * 12) + heightInches!
        var bmi = 703 * weight! / (height * height)
        
        if (bmi <= 18.5) {
            outputOL.text = "Your Body Mass Index is \(String(format: "%.1f", bmi)).\n This is considered Underweight."
            imageViewOL.image = UIImage(named: "Underweight")
        }
        else if (bmi >= 18.6 && bmi <= 24.9) {
            outputOL.text = "Your Body Mass Index is \(String(format: "%.1f", bmi)).\n This is considered Normal 👍."
            imageViewOL.image = UIImage(named: "Normal")
        }
        else if (bmi >= 25 && bmi <= 29.9) {
            outputOL.text = "Your Body Mass Index is \(String(format: "%.1f", bmi)).\n This is considered Overweight."
            imageViewOL.image = UIImage(named: "Overweight")
        }
        else {
            outputOL.text = "Your Body Mass Index is \(String(format: "%.1f", bmi)).\n This is considered Obesity."
            imageViewOL.image = UIImage(named: "Obesity")
        }
        
    }
    

}


//
//  ViewController.swift
//  Blood Pressure Monitor App
//
//  Created by Vinicius Rodrigues on 10/31/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var patientIdOL: UITextField!
    
    @IBOutlet weak var systolicOL: UITextField!
    
    @IBOutlet weak var diastolicOL: UITextField!
    
    var systolic = 0.0
    var diastolic = 0.0
    var mbp = 0
    var image = ""
    var patientID = ""
    var bloodPressure = ""
    var result = ""
    var healthTip = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func computeMBP(_ sender: UIButton) {
        // Read the input values (sytolic and diastolic pressure)
        systolic = Double(systolicOL.text!)!
        diastolic = Double(diastolicOL.text!)!
        patientID = patientIdOL.text!
        bloodPressure = "\(systolic)/\(diastolic)"
        
        mbp = Int((0.667 * diastolic) + (0.334 * systolic))
        
        if mbp < 60 {
            image = "stroke"
            result = "Stroke or Internal Bleeding"
            healthTip = "Seek immediate medical Attention. 👨‍⚕️"
        }
        else if mbp <= 69 {
            image = "hypotension"
            result = "Hypotension"
            healthTip = "Stay Hydrated. 🥛"
        }
        else if mbp <= 99 {
            image = "healthy"
            result = "Healthy"
            healthTip = "You are doing great. 👍"
        }
        else if mbp <= 106 {
            image = "elevated"
            result = "Elevated"
            healthTip = "Make sure to maintain your workout. 🏋️"
        }
        else {
            image = "hypertension"
            result = "Hypertension"
            healthTip = "Consult doctor for medication tab. 💊"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if transition == "resultSegue" {
            let destination = segue.destination as! ResultViewController
            
            destination.image = image
            destination.patientID = patientID
            destination.bloodPressure = bloodPressure
            destination.mbp = mbp
            destination.result = result
            destination.healthTip = healthTip
        }
    }
}

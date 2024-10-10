//
//  ViewController.swift
//  Rodrigues_Exam01
//
//  Created by Vinicius Rodrigues on 9/26/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countryInputOL: UITextField!
    
    @IBOutlet weak var electricityInputOL: UITextField!
    
    @IBOutlet weak var locationOutputOL: UILabel!
    
    @IBOutlet weak var electricityOutputOL: UILabel!
    
    @IBOutlet weak var carbonOutputOL: UILabel!
    
    @IBOutlet weak var resultOutputOL: UILabel!
    
    @IBOutlet weak var drivingFactorsOutputOL: UILabel!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnClicked(_ sender: UIButton) {
        
        // Read the input
        var country = countryInputOL.text!
        var kWh = Double(electricityInputOL.text!)
        
        let emissionFactor = 0.9
        
        // Calculate carbon footprint
        var carbonFootprint = (kWh! * emissionFactor) / 1000
        
        // Print results
        locationOutputOL.text = "Location: \(country)"
        electricityOutputOL.text = "Electricity Consumed: \(String(format: "%.1f", kWh!)) kWh"
        carbonOutputOL.text = "Carbon footprint: \(carbonFootprint) tons CO₂ per year"
        
        // Check if the results are low, medium, or high carbon footprint
        if (kWh! <= 2222 && carbonFootprint < 2) {
            resultOutputOL.text = "Result: Low Carbon Footprint"
            drivingFactorsOutputOL.text = "This is because of Small-scale farming: Manual labor or energy-efficient practices, limited machinery use and Organic farming🌳"
            imageViewOL.image = UIImage(named: "Low")
        }
        else if (kWh! >= 2223 && kWh! <= 5555 && carbonFootprint >= 2 && carbonFootprint < 5) {
            resultOutputOL.text = "Result: Medium Carbon Footprint"
            drivingFactorsOutputOL.text = "This is because of Medium-scale farming: like some machinery use, moderate fertilizer application and livestock farming🐄"
            imageViewOL.image = UIImage(named: "Medium")
        }
        else if (kWh! >= 5556 && kWh! <= 10000 && carbonFootprint >= 5) {
            resultOutputOL.text = "Result: High Carbon Footprint"
            drivingFactorsOutputOL.text = "This is because of Large-scale industrial farming: Intensive use of machinery, fertilizers, and pesticides and High livestock concentration🐄🐄🐓"
            imageViewOL.image = UIImage(named: "High")
        }
        
    }
    
    // Reset button resets all text fields, labels, and UIImage
    @IBAction func resetBtnClicked(_ sender: UIButton) {
        countryInputOL.text = ""
        electricityInputOL.text = ""
        locationOutputOL.text = ""
        electricityOutputOL.text = ""
        carbonOutputOL.text = ""
        resultOutputOL.text = ""
        drivingFactorsOutputOL.text = ""
        imageViewOL.image = UIImage()
        
        countryInputOL.becomeFirstResponder()
    }
    

}


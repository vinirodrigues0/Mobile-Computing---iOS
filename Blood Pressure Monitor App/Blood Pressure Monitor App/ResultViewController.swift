//
//  ResultViewController.swift
//  Blood Pressure Monitor App
//
//  Created by Vinicius Rodrigues on 10/31/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var patientIdOL: UILabel!
    
    @IBOutlet weak var bloodPressureOL: UILabel!
    
    @IBOutlet weak var meanBloodPressureOL: UILabel!
    
    @IBOutlet weak var resultOL: UILabel!
    
    @IBOutlet weak var healthTipOL: UILabel!
    
    var image = ""
    var patientID = ""
    var bloodPressure = ""
    var mbp = 0
    var result = ""
    var healthTip = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageViewOL.image = UIImage(named: image)
        patientIdOL.text! += patientID
        bloodPressureOL.text! += "\(bloodPressure) mm Hg"
        meanBloodPressureOL.text! += "\(mbp) mm Hg"
        resultOL.text! += result
        healthTipOL.text! += healthTip
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

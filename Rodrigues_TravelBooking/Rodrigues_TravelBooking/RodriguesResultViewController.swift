//
//  RodriguesResultViewController.swift
//  Rodrigues_TravelBooking
//
//  Created by Vinicius Rodrigues on 11/12/24.
//

import UIKit

class RodriguesResultViewController: UIViewController {
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var resultOL: UILabel!
    
    @IBOutlet weak var travellerNameOL: UILabel!
    
    @IBOutlet weak var noOfTravellersOL: UILabel!
    
    @IBOutlet weak var cabinTypeOL: UILabel!
    
    @IBOutlet weak var totalCostOL: UILabel!
    
    // Initialize variables to store data passed from the BookingViewController
    var image = ""
    var result = ""
    var travellerName = ""
    var noOfTravellers = 0
    var cabinType = ""
    var totalCost = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // If valid cabin type, display the booking confirmation details
        if (result == "success") {
            imageOL.image = UIImage(named: image)
            resultOL.text = "Hello \(travellerName), \nYour booking is confirmed."
            travellerNameOL.text = "Name: \(travellerName)"
            noOfTravellersOL.text = "Number of Travellers: \(noOfTravellers)"
            cabinTypeOL.text = "Cabin class: \(cabinType)"
            totalCostOL.text = "Total: $\(totalCost)"
        }
        // If invalid cabin type, display an error message
        else {
            imageOL.image = UIImage(named: image)
            resultOL.text = "There is no selected class.\nPlease choose a valid class."
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

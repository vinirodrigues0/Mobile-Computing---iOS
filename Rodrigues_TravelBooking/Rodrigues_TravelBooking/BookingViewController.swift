//
//  ViewController.swift
//  Rodrigues_TravelBooking
//
//  Created by Vinicius Rodrigues on 11/12/24.
//

import UIKit

class BookingViewController: UIViewController {
    
    @IBOutlet weak var travellerNameOL: UITextField!
    
    @IBOutlet weak var noOfTravellersOL: UITextField!
    
    @IBOutlet weak var cabinTypeOL: UITextField!
    
    @IBOutlet weak var bookNowButtonOL: UIButton!
    
    // Initialize variables to hold booking details and result data
    var travellerName = ""
    var noOfTravellers = 0
    var cabinType = ""
    var totalCost = 0
    var image = ""
    var result = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        bookNowButtonOL.isEnabled = false // Disable the bookNowButton at the initial view
    }
    
    // Enable the bookNowButton when all text fields have some input (NOT empty)
    @IBAction func cabinTypeEditingChanged(_ sender: UITextField) {
        if (!travellerNameOL.text!.isEmpty && !noOfTravellersOL.text!.isEmpty && !cabinTypeOL.text!.isEmpty) {
            bookNowButtonOL.isEnabled = true
        }
    }
    
    @IBAction func bookNowButton(_ sender: UIButton) {
        
        // Store the input entered by the user
        travellerName = travellerNameOL.text!
        noOfTravellers = Int(noOfTravellersOL.text!)!
        cabinType = cabinTypeOL.text!
        
        // If-statements calculate the total cost and assign result, image based on cabin type
        // Economy cabin type
        if (cabinType.lowercased() == "economy") {
            totalCost = noOfTravellers * 150
            image = "economy"
            result = "success"
        }
        // Luxury cabin type
        else if (cabinType.lowercased() == "luxury") {
            totalCost = noOfTravellers * 250
            image = "luxury"
            result = "success"
        }
        // Invalid cabin type
        else {
            image = "failed"
            result = "failed"
        }
        
        bookNowButtonOL.isEnabled = false // Reset bookNowButton
        
        // Clear the input on the text fields
        travellerNameOL.text = ""
        noOfTravellersOL.text = ""
        cabinTypeOL.text = ""
        
        travellerNameOL.becomeFirstResponder() // Focus cursor back to the 1st text field on top
    }
    
    // Pass data to RodriguesResultViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        
        if (transition == "resultSegue") {
            let destination = segue.destination as! RodriguesResultViewController
            
            destination.image = image
            destination.result = result
            destination.travellerName = travellerName
            destination.noOfTravellers = noOfTravellers
            destination.cabinType = cabinType
            destination.totalCost = totalCost
        }
    }

}

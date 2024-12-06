//
//  profileViewController.swift
//  Rodrigues_PracticeExam03
//
//  Created by Vinicius Rodrigues on 12/1/24.
//

import UIKit

class profileViewController: UIViewController {
    
    @IBOutlet weak var initialsOL: UILabel!
    
    @IBOutlet weak var phoneNumberOL: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Display contact details (initials and phone number)
        initialsOL.text = "Initials: \(contact.LastName.first!). \(contact.FirstName.first!)."
        phoneNumberOL.text = "Phone Number: \(contact.PhoneNumber)"
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

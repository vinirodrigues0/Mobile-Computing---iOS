//
//  ResultViewController.swift
//  TableViewContactList
//
//  Created by Vinicius Rodrigues on 11/14/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var nameOL: UILabel!
    
    @IBOutlet weak var departmentOL: UILabel!
    
    @IBOutlet weak var phoneNumOL: UILabel!
    
    @IBOutlet weak var officeOL: UILabel!
    
    var contact: Contact?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameOL.text = "Name: \((contact?.name)!)"
        departmentOL.text = "Department: \((contact?.department)!)"
        phoneNumOL.text = "Phone Number: \((contact?.phoneNum)!)"
        officeOL.text = "Office: \((contact?.office)!)"
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

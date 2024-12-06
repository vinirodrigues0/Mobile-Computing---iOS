//
//  ResultViewController.swift
//  tableViewDemo
//
//  Created by Vinicius Rodrigues on 11/12/24.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var displayLabelOL: UILabel!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        displayLabelOL.text = "The product is \((product?.productName)!), and it is of \((product?.productCategory)!)"
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

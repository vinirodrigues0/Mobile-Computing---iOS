//
//  ViewController.swift
//  HelloApp
//
//  Created by Vinicius Rodrigues on 9/3/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitBtnClicked(_ sender: UIButton) {
        // Read the entered name and assign it to a var.
        var name = inputOL.text!
        
        // Interpolate the name with Hello, name!
        print("Hello, \(name)!")
        
        outputOL.text = "Hello, \(name)!"
    }
    
}


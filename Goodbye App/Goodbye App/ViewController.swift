//
//  ViewController.swift
//  Goodbye App
//
//  Created by Vinicius Rodrigues on 9/3/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    @IBOutlet weak var inputLastOL: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnClicked(_ sender: UIButton) {
        var first = inputOL.text!
        var last = inputLastOL.text!
        
        print("Hello, \(first) \(last)!")
        
        outputOL.text = "Hello, \(first) \(last)!"
    }
    
    

}


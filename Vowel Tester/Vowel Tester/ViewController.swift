//
//  ViewController.swift
//  Vowel Tester
//
//  Created by Vinicius Rodrigues on 9/10/24.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var inputOL: UITextField!
    
    
    @IBOutlet weak var outputOL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnClicked(_ sender: Any) {
        
        // Read the input and store it in a local variable
        var input = inputOL.text!
        var vowelCount = 0
        
        // Check whether the text has vowels
        for character in input {
            if (character == "a" || character == "e" || character == "i" || character == "o" || character == "u") {
                vowelCount += 1
            }
        }
        
        // Output how many vowels the entered text has
        if (vowelCount > 0) {
            outputOL.text = "The entered text \(input) has \(vowelCount) vowels. 😃"
        }
        else {
            outputOL.text = "The entered text \(input) has no vowels. 🥴"
        }
    }
    
}


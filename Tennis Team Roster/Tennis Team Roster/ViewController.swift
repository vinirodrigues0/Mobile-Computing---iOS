//
//  ViewController.swift
//  Tennis Team Roster
//
//  Created by Vinicius Rodrigues on 9/25/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var outputOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitBtnClicked(_ sender: UIButton) {
        var input = inputOL.text!
        
        if (input == "Rafal Bednarczuk") {
            outputOL.text = "Name: \(input)\nPlace of Origin: Lublin, Poland\nClass: Senior"
            imageOL.image = UIImage(named: "Rafal")
        }
        else if (input == "Michael Delebois") {
            outputOL.text = "Name: \(input)\nPlace of Origin: Villa Cortese, Italy\nClass: Senior"
            imageOL.image = UIImage(named: "Mike")
        }
        else if (input == "Luc Mascitti") {
            outputOL.text = "Name: \(input)\nPlace of Origin: Melbourne, Australia\nClass: Senior"
            imageOL.image = UIImage(named: "Luc")
        }
        else if (input == "Mason Meier") {
            outputOL.text = "Name: \(input)\nPlace of Origin: Omaha, Nebraska\nClass: Senior"
            imageOL.image = UIImage(named: "Mason")
        }
        else if (input == "Filipo Piranomonte") {
            outputOL.text = "Name: \(input)\nPlace of Origin: Mestre, Italy\nClass: Senior"
            imageOL.image = UIImage(named: "Pippo")
        }
        else if (input == "Vini Rodrigues") {
            outputOL.text = "Name: \(input)\nPlace of Origin: Maua, Brazil\nClass: Junior"
            imageOL.image = UIImage(named: "Vini")
        }
        else if (input == "Martin Sanchez") {
            outputOL.text = "Name: \(input)\nPlace of Origin: Buenos Aires, Argentina\nClass: Senior"
            imageOL.image = UIImage(named: "Martin")
        }
        else if (input == "Andrea Zamurri") {
            outputOL.text = "Name: \(input)\nPlace of Origin: Rieti, Italy\nClass: Senior"
            imageOL.image = UIImage(named: "Andrea")
        }
        else if (input == "Tessa Kwakernaak") {
            outputOL.text = "Name: \(input)\nPlace of Origin: Gouda, The Netherlands\nClass: Senior"
            imageOL.image = UIImage(named: "Tessa")
        }
        else {
            outputOL.text = "Incorrect name! Please enter again."
        }
                    
    }
    
    @IBAction func resetBtnClicked(_ sender: UIButton) {
        inputOL.text = ""
        imageOL.image = UIImage()
        outputOL.text = ""
        
        inputOL.becomeFirstResponder()
    }
    

}


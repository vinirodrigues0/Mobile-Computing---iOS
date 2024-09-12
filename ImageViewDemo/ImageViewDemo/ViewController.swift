//
//  ViewController.swift
//  ImageViewDemo
//
//  Created by Vinicius Rodrigues on 9/12/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageViewOL: UIImageView!
    
    @IBOutlet weak var DisplayOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickBTN(_ sender: UIButton) {
        // Display the image
        ImageViewOL.image = UIImage(named: "Image")
        
        // Display the text description in label
        DisplayOL.text = "This is the finest tennis racket stringer in the market. I enjoy stringing on the Wilson machine! 😃"
        
    }
    
    


}


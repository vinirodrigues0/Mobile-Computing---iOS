//
//  ViewController.swift
//  CoordinatesApp
//
//  Created by Vinicius Rodrigues on 10/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ImageViewOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // To print the minium value of x, y for the image
        let minx = ImageViewOL.frame.minX
        let miny = ImageViewOL.frame.minY
        print("Min: (\(minx), \(miny))")
        
        // To print the maximum value of x, y for the image
        let maxx = ImageViewOL.frame.maxX
        let maxy = ImageViewOL.frame.maxY
        print("Max: (\(maxx), \(maxy))")
        
        // To print the middle point of x, y for the image
        let midx = ImageViewOL.frame.midX
        let midy = ImageViewOL.frame.midY
        print("Mid: (\(midx), \(midy))")
        
        // To print the width and height for the image
        let w = ImageViewOL.frame.width
        print("Width: \(w)")
        let h = ImageViewOL.frame.height
        print("Height: \(h)")
        
        // This transition is for the Iphone 16 Pro
        // 1. Move the image to the top left corner
        ImageViewOL.frame.origin.x = 0
        ImageViewOL.frame.origin.y = 0
        
        // 2. Move the image to the top right corner
        ImageViewOL.frame.origin.x = 302
        ImageViewOL.frame.origin.y = 0
        
        // 3. Move the image to the bottom left corner
        ImageViewOL.frame.origin.x = 0
        ImageViewOL.frame.origin.y = 774
        
        // 4. Move the image to the bottom right corner
        ImageViewOL.frame.origin.x = 302
        ImageViewOL.frame.origin.y = 774
        
        // 5. Move the image to the center of the view
        ImageViewOL.frame.origin.x = (402 - 100) / 2
        ImageViewOL.frame.origin.y = (874 - 100) / 2
        
        // This transition is for the Iphone 16 Pro Max
        // 1. Move the image to the top left corner
        //ImageViewOL.frame.origin.x = 0
        //ImageViewOL.frame.origin.y = 0
        
        // 2. Move the image to the top right corner
        //ImageViewOL.frame.origin.x = 340
        //ImageViewOL.frame.origin.y = 0
        
        // 3. Move the image to the bottom left corner
        //ImageViewOL.frame.origin.x = 0
        //ImageViewOL.frame.origin.y = 856
        
        // 4. Move the image to the bottom right corner
        //ImageViewOL.frame.origin.x = 340
        //ImageViewOL.frame.origin.y = 856
        
        // 5. Move the image to the center of the view
        //ImageViewOL.frame.origin.x = (440 - 100) / 2
        //ImageViewOL.frame.origin.y = (956 - 100) / 2
    }
    
    @IBAction func animateBtnClicked(_ sender: UIButton) {
        
        // Animate with alpha range from 0 to 1 --> 0 being faded and 1 being transparent
        //UIView.animate(withDuration: 5, animations: {
        //self.ImageViewOL.alpha = 0.2
        //})
        
        // More attributes going on this function, and moving the image to the top left corner
        UIView.animate(withDuration: 5, delay: 1, usingSpringWithDamping: 1, initialSpringVelocity: 50, animations: {
            self.ImageViewOL.alpha = 0.5
            self.ImageViewOL.frame.origin.x = 0
            self.ImageViewOL.frame.origin.y = 0
        })
    }
    
}

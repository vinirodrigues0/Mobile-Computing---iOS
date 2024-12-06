//
//  ViewController.swift
//  AnimationsApp
//
//  Created by Vinicius Rodrigues on 10/17/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var happyButton: UIButton!
    
    @IBOutlet weak var sadButton: UIButton!
    
    @IBOutlet weak var angryButton: UIButton!
    
    @IBOutlet weak var shakeMeButton: UIButton!
    
    @IBOutlet weak var showButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // Move the image outside the view
        imageViewOL.frame.origin.x = view.frame.maxX
        
        // Similarly, move the other components outside the view
        happyButton.frame.origin.x = view.frame.width
        sadButton.frame.origin.x = view.frame.width
        angryButton.frame.origin.x = view.frame.width
        shakeMeButton.frame.origin.x = view.frame.width
    }
    
    @IBAction func happyBtnClicked(_ sender: Any) {
        updateAndAnimate("happy")
    }
    
    @IBAction func sadBtnClicked(_ sender: UIButton) {
        updateAndAnimate("sad")
    }
    
    @IBAction func angryBtnClicked(_ sender: UIButton) {
        updateAndAnimate("angry")
    }
    
    @IBAction func shakeMeBtnClicked(_ sender: UIButton) {
        
        var width = imageViewOL.frame.width
        var height = imageViewOL.frame.height
        
        width += 40
        height += 40
        
        let x = imageViewOL.frame.origin.x - 30
        let y = imageViewOL.frame.origin.y - 30
        
        let largeFrame = CGRect(x: x, y: y, width: width, height: height)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50 ,animations: {
            self.imageViewOL.frame = largeFrame
        })
        
    }
    
    @IBAction func showBtnClicked(_ sender: UIButton) {
        
        // All the components would be placed back to their original position
        UIView.animate(withDuration: 1, animations:  {
            self.imageViewOL.center.x = self.view.center.x
            self.happyButton.center.x = self.view.center.x
            self.sadButton.center.x = self.view.center.x
            self.angryButton.center.x = self.view.center.x
            self.shakeMeButton.center.x = self.view.center.x
        })
        
        // Disable the show button
        showButton.isEnabled = false
    }
    
    func updateAndAnimate(_ imageName : String) {
        
        // Making the current image opaque
        UIView.animate(withDuration: 1, animations: {
            self.imageViewOL.alpha = 0
        })
        
        // Assign the new image with animation and make it transparent. (alpha = 1)
        
        UIView.animate(withDuration: 1, delay: 0.5, animations: {
            self.imageViewOL.alpha = 1
            self.imageViewOL.image = UIImage(named: imageName)
        })
        
    }
    

}


//
//  RodriguesGameController.swift
//  Rodrigues_Exam03
//
//  Created by Vinicius Rodrigues on 12/3/24.
//

import UIKit

class RodriguesGameController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var nameOL: UILabel!
    
    @IBOutlet weak var descriptionOL: UITextView!
    
    var game = Game()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = game.name  // Set the title of the view to the selected game
        
        // Display the selected game info (image, name, and description)
        imageViewOL.image = game.imageName
        nameOL.text = game.name
        descriptionOL.text = game.information
        
        // Animate the image
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  MovieInfoViewController.swift
//  Rodrigues_MovieApp
//
//  Created by Vinicius Rodrigues on 11/18/24.
//

import UIKit

class MovieInfoViewController: UIViewController {
    
    @IBOutlet weak var movieImageViewOutlet: UIImageView!
    
    @IBOutlet weak var movieInfoOutlet: UITextView!
    
    var moviesInfo: MovieList?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = moviesInfo?.movieName // Set the view title to the selected movie's name
        
        // Display the movie image
        movieImageViewOutlet.image = UIImage(named: "\(moviesInfo?.movieImage ?? "")")
        
        // Animate the movie image
        var width = movieImageViewOutlet.frame.width
        var height = movieImageViewOutlet.frame.height
        
        width += 20
        height += 20
        
        let x = movieImageViewOutlet.frame.origin.x
        let y = movieImageViewOutlet.frame.origin.y
        
        
        let animatedFrame = CGRect(x: x, y: y, width: width, height: height)
        
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50 ,animations: {
            self.movieImageViewOutlet.frame = animatedFrame
        })
    }
    
    // If "Click Me!" button is clicked display the movieInfo
    @IBAction func showInfoAction(_ sender: UIButton) {
        movieInfoOutlet.text = moviesInfo?.movieInfo
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

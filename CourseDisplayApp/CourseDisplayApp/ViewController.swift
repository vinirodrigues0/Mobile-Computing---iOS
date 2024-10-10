//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Vinicius Rodrigues on 10/8/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    @IBOutlet weak var crsNumOL: UILabel!
    
    @IBOutlet weak var crsTitleOL: UILabel!
    
    @IBOutlet weak var semesterOL: UILabel!
    
    @IBOutlet weak var prevBtnOL: UIButton!
    
    @IBOutlet weak var nextBtnOL: UIButton!
    
    let courses = [
        ["img01", "44555", "Network Security", "Fall 2024"],
        ["img02", "44643", "Mobile Edge Computing", "Spring 2024"],
        ["img03", "44656", "Data Visualization", "Summer 2024"]]
    
    var imageNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Display the details (image, num, title, sem) of first course
        updateCourseDetails(imageNum)
        
        // Previous button is disabled
        prevBtnOL.isEnabled = false
        
    }
    
    @IBAction func prevBtnClick(_ sender: UIButton) {
        
        // Decrement the image number
        imageNum -= 1
        
        // Display the details (image, num, title, sem) - Update the course details
        updateCourseDetails(imageNum)
        
        // Next button must be enabled to true
        nextBtnOL.isEnabled = true
        
        // Once you reach the first element of the array, previous button should be disabled
        if (imageNum == 0) {
            prevBtnOL.isEnabled = false
        }
        
    }
    
    @IBAction func nextBtnClick(_ sender: UIButton) {
        
        // Increment the image number
        imageNum += 1
        
        // Display the details (image, num, title, sem) - Update the course details
        updateCourseDetails(imageNum)
        
        // Previous button must be enabled to true
        prevBtnOL.isEnabled = true
        
        // Once you reach the end of the array, next button should be disabled
        if (imageNum == courses.count - 1) {
            nextBtnOL.isEnabled = false
        }
    }
    
    func updateCourseDetails(_ imageNum: Int) {
        
        // Display the details (image, num, title, sem)
        imageViewOL.image = UIImage(named: courses[imageNum][0])
        crsNumOL.text = courses[imageNum][1]
        crsTitleOL.text = courses[imageNum][2]
        semesterOL.text = courses[imageNum][3]
    }
    
}


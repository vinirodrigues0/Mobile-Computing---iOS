//
//  ViewController.swift
//  Rodrigues_SearchApp
//
//  Created by Vinicius Rodrigues on 11/3/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var prevButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    // Array of images corresponding to each topic
    var images_array = [["federer", "djokovic", "nadal"],
                        ["basketball", "soccer", "padel"],
                        ["adam sandler", "robert downey jr", "jennifer aniston"],
                        ["rich dad poor dad", "a storm of swords", "diary of a wimpy kid"],
                        ["rome", "sao paulo", "rotterdam"]]
    
    // Array of keywords to search for each topic
    var keywords_array = [["tennis player", "tennis athlete", "tennis"],
                          ["sports", "athletics", "exercise"],
                          ["actor", "movie", "film"],
                          ["book", "read", "literature"],
                          ["place", "city", "location"]]
    
    // Array of detailed descriptions for each topic
    var topics_array = [["Roger Federer is a Swiss former professional tennis player. He was ranked world No. 1 in singles by the Association of Tennis Professionals for 310 weeks, including a record 237 consecutive weeks, and finished as the year-end No. 1 five times. He won 103 singles titles on the ATP Tour, the second most of all time, including 20 major men's singles titles",
                         "Novak Djokovic is a Serbian professional tennis player. He has been ranked No. 1 for a record total of 428 weeks in a record 13 different years by the ATP, and finished as the year-end No. 1 a record eight times. Djokovic has won a record 24 Grand Slam men's singles titles, including a record ten Australian Open titles. ",
                         "Rafael Nadal Parera is a Spanish professional tennis player. He has been ranked world No. 1 in singles by the Association of Tennis Professionals for 209 weeks, and has finished as the year-end No. 1 five times. Nadal has won 22 Grand Slam men's singles titles, including a record 14 French Open titles."],
                        ["Basketball is a team sport in which two teams, usually of five players each, opposing one another on a rectangular court, compete with the primary objective of shooting a basketball through the defender's hoop (a basket 18 inches (46 cm) in diameter mounted 10 feet (3.048 m) high to a backboard at each end of the court), while preventing the opposing team from shooting through their own hoop.",
                         "Soccer is a team sport played between two teams of 11 players each, who almost exclusively use their feet to propel a ball around a rectangular field called a pitch. The objective of the game is to score more goals than the opposing team by moving the ball beyond the goal line into a rectangular-framed goal defended by the opposing team",
                         "Padel is a mix between Tennis and Squash. It’s usually played in doubles on an enclosed court surrounded by walls of glass and metallic mash. The court is one third of the size of a tennis court."],
                        ["Adam Richard Sandler is an American actor and stand-up comedian. Primarily a comedic leading actor in films, his accolades include nominations for three Grammy Awards, five Primetime Emmy Awards, a Golden Globe Award, and a Screen Actors Guild Award",
                         "Robert John Downey Jr. is an American actor. His films as a leading actor have grossed over $14 billion worldwide, making him one of the highest-grossing actors of all time. The most famous character he has played is Iron Man.",
                         "Jennifer Joanna Aniston is an American actress. She rose to international fame for her role as Rachel Green on the television sitcom Friends from 1994 to 2004, which earned her Primetime Emmy, Golden Globe, and Screen Actors Guild awards"],
                        ["Rich Dad Poor Dad is a 1997 book written by Robert T. Kiyosaki and Sharon Lechter. It advocates the importance of financial literacy, financial independence and building wealth through investing in assets, real estate investing, starting and owning businesses, as well as increasing one's financial intelligence.",
                         "A Storm of Swords is the third of seven planned novels in the fantasy series A Song of Ice and Fire by American author George R. R. Martin. It was first published in the United Kingdom on August 8, 2000, with a United States edition following in November 2000.",
                         "Diary of a Wimpy Kid is an American children's book series and media franchise created by American author and cartoonist Jeff Kinney. The series follows Greg Heffley, a middle-schooler who illustrates his daily life in a diary. Kinney spent eight years working on the first book before showing it to a publisher."],
                        ["Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome Capital, and a special comune named Comune di Roma Capitale.",
                         "São Paulo, Brazil’s vibrant financial center, is among the world's most populous cities, with numerous cultural institutions and a rich architectural tradition. Its iconic buildings range from its neo-Gothic cathedral and the 1929 Martinelli skyscraper to modernist architect Oscar Niemeyer’s curvy Edifício Copan. The colonial-style Pátio do Colégio church marks where Jesuit priests founded the city in 1554.",
                         "Rotterdam is a major port city in the Dutch province of South Holland. The Maritime Museum's vintage ships and exhibits trace the city's seafaring history. The 17th-century Delfshaven neighborhood is home to canalside shopping and Pilgrim Fathers Church, where pilgrims worshiped before sailing to America. After being almost completely reconstructed following WWII, the city is now known for bold, modern architecture. "]]
    
    // Initialize variables searchText, currentTopic, and currentIndex
    var searchText = ""
    var currentTopic = -1
    var currentIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Display welcome page
        displayWelcomePage()
    }
    
    @IBAction func searchTextFieldAction(_ sender: UITextField) {
        searchButton.isEnabled = true // Enable search button when text is entered
        
        // Disable search button if text field is empty
        if searchTextField.text == "" {
            searchButton.isEnabled = false
        }
    }
    
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1113) // Play the system sound 1113 once button is clicked
        
        currentTopic = -1 // Reset topic index for a new search
        
        // Show previous, reset, and next buttons
        prevButton.isHidden = false
        resetButton.isHidden = false
        nextButton.isHidden = false
        
        // Disable the previous button and enable the reset, next buttons
        prevButton.isEnabled = false
        resetButton.isEnabled = true
        nextButton.isEnabled = true
        
        searchText = searchTextField.text! // Get the search text entered by user
        
        // Loop through keywords array to see if the search text matches any keyword
        searchLoop: for i in 0...keywords_array.count - 1 {
            for j in 0...keywords_array[i].count - 1 {
                if keywords_array[i][j].contains(searchText) {
                    currentTopic = i
                    break searchLoop
                }
            }
        }
        
        
        currentIndex = 0 // Start at the first item in the found topic
        updateImageAndDescription() // Display the image and description for the current topic
        
    }
    
    @IBAction func ShowPrevImagesBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105) // Play the system sound 1105 once button is clicked
        
        currentIndex -= 1 // Move to previous index in the topic
        updateImageAndDescription() // Update the displayed image and description
        
        nextButton.isEnabled = true // Enable the next button
        
        // Disable previous button if we are at the first index
        if currentIndex == 0 {
            prevButton.isEnabled = false
        }
    }
    
    @IBAction func ShowNextImagesBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105) // Play the system sound 1105 once button is clicked
        
        currentIndex += 1 // Move to next index in the topic
        updateImageAndDescription() // Update the displayed image and description
        
        prevButton.isEnabled = true // Enable the previous button
        
        // Disable next button if we are at the last index
        if currentIndex == keywords_array[currentTopic].count - 1 {
            nextButton.isEnabled = false
        }
    }
    
    @IBAction func ResetBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1111) // Play the system sound 1111 once button is clicked
        
        // Display welcome page
        displayWelcomePage()
        
        searchTextField.text = "" // Clear the search text field
    }
    
    // Function that updates the image and description based on the current topic, index
    func updateImageAndDescription() {
        // If valid keyword for a topic was found
        if currentTopic >= 0 {
            let imageName = images_array[currentTopic][currentIndex]
            resultImage.image = UIImage(named: imageName)
            topicInfoText.text = topics_array[currentTopic][currentIndex]
        }
        // Else display search not found image
        else {
            resultImage.image = UIImage(named: "search not found")
            topicInfoText.text = "No results found for \(searchText)"
            
            prevButton.isHidden = true
            resetButton.isHidden = true
            nextButton.isHidden = true
        }
    }

    // Function that displays the welcome page
    func displayWelcomePage() {
        resultImage.image = UIImage(named: "welcome")
        topicInfoText.text = "Hello, Vinicius !!"
        
        searchButton.isEnabled = false
        prevButton.isHidden = true
        resetButton.isHidden = true
        nextButton.isHidden = true
    }
    
}

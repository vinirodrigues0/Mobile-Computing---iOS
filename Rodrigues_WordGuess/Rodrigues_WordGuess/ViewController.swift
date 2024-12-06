//
//  ViewController.swift
//  Rodrigues_WordGuess
//
//  Created by Vinicius Rodrigues on 10/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var guessLetterButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    // Array of words and their hints
    var words = [["SWIFT", "Programming Language"],
                ["DOG", "Animal"],
                ["CYCLE", "Two wheeler"],
                ["MACBOOK", "Apple Device"],
                ["RODRIGUES", "Vinicius"]]
    
    // Initializing game variables and one constant
    var count = 0;
    var word = ""
    var lettersGuessed = ""
    let maxNumOfWrongGuesses = 10
    var guessesCount = 0
    var gameStatus = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Initially disable the guess button, and clear the user guess label
        guessLetterButton.isEnabled = false
        userGuessLabel.text = ""
        
        // Get the current word for guessing
        word = words[count][0]
        updateUnderscores()
        
        // Update UI labels with initial game state
        wordsGuessedLabel.text = "Total number of words guessed successfully: \(count)"
        wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count - count)"
        totalWordsLabel.text = "Total number of words in game: \(words.count)"
        guessCountLabel.text = "You have made 0 guesses"
        hintLabel.text = "Hint: \(words[count][1])"
        
        // Clear the status label
        statusLabel.text = ""
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        // Increment the guess count and update the label
        guessesCount += 1
        guessCountLabel.text = "You have made \(guessesCount) guesses"
        
        if guessesCount < 10 {
            // Get the text from the text field
            let letter = guessLetterField.text!
            
            // Replace the guessed letter if the letter is part of the word
            lettersGuessed = lettersGuessed + letter
            var revealedWord = ""
            for l in word {
                if lettersGuessed.contains(l) {
                    revealedWord += "\(l)"
                }
                else {
                    revealedWord += "_ "
                }
            }
            
            // Assigning the word to displayLabel after a guess
            userGuessLabel.text = revealedWord
            guessLetterField.text = ""
            
            // If the word is guessed correctly, we are enabling play again button and disabling the check button.
            if userGuessLabel.text!.contains("_") == false {
                playAgainButton.isHidden = false
                guessLetterButton.isEnabled = false
                guessLetterField.isEnabled = false
                
                // Display the image related to the guesses word
                displayImage.image = UIImage(named: "\(words[count][0])")
                
                count += 1 // Move to the next word
                
                // Update UI labels with the new game state
                wordsGuessedLabel.text = "Total number of words guessed successfully: \(count)"
                wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count - count)"
                totalWordsLabel.text = "Total number of words in game: \(words.count)"
                guessCountLabel.text = "Wow! You have made \(guessesCount) guesses to guess the word!"
            }
            guessLetterButton.isEnabled = false // Disable the guess button after each guess
        }
        // Notify the user that all the guesses were used (10 guesses max)
        else {
            guessCountLabel.text = "You have used all the available guesses, Please play again"
            hintLabel.text = ""
            playAgainButton.isHidden = false
            guessLetterButton.isEnabled = false
            guessLetterField.isEnabled = false
            guessLetterField.text = ""
        }
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        // Reset the guess count and update the guess count label
        guessesCount = 0
        guessCountLabel.text = "You have made \(guessesCount) guesses"
        
        displayImage.image = UIImage() // Clear any displayed image
        guessLetterField.isEnabled = true // Re-enable the guess
        
        // Reset the buttons to disable initially
        playAgainButton.isHidden = true
        
        // Clear the label
        lettersGuessed = ""
        
        // If the game has reached the end, all the words were guessed
        if gameStatus == "done" {
            count = 0 // Reset the count for new game
            
            playAgainButton.isHidden = true
            guessLetterButton.isEnabled = false
            
            userGuessLabel.text = ""
            
            word = words[count][0]
            updateUnderscores()
            
            // Update UI labels for the new game
            wordsGuessedLabel.text = "Total number of words guessed successfully: \(count)"
            wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count - count)"
            totalWordsLabel.text = "Total number of words in game: \(words.count)"
            hintLabel.text = "Hint: \(words[count][1])"
            guessCountLabel.text = "You have made \(guessesCount) guesses"
            
            statusLabel.text = ""
            displayImage.image = UIImage()
            
            // Update game status to ongoing
            gameStatus = "ongoing"
        }
        
        // If count reaches the end of the array (all the words are guessed successfully), then print Congratulations in the status label
        if count == words.count {
            statusLabel.text = "Congratulations! You win!\nPlease play again"
            
            playAgainButton.isHidden = false
            guessLetterField.isEnabled = false
            
            // Clearing the labels
            guessCountLabel.text = ""
            userGuessLabel.text = ""
            hintLabel.text = ""
            
            // Game status is done, need that to reset everything
            gameStatus = "done"
            
            // Display congratulations image
            displayImage.image = UIImage(named: "Congratulations")
        }
        else {
            // Fetch the next word from the array
            word = words[count][0]
            
            // Fetch the hint related to the word
            hintLabel.text = "Hint: "
            hintLabel.text! += words[count][1]
            
            // Enabling the check button
            guessLetterButton.isEnabled = false
            
            userGuessLabel.text = ""
            updateUnderscores()
        }
    }
    
    @IBAction func enterLabelEntered(_ sender: UITextField) {
        // Read the data from the text field
        var textEntered = guessLetterField.text!
        
        // Consider only the last character by calling textEntered.last and trimming the white spaces.
        textEntered = String(textEntered.last ?? " ").trimmingCharacters(in: .whitespaces)
        guessLetterField.text = textEntered
        
        // Check whether the entered text is empty or not to enable check button
        if textEntered.isEmpty {
            guessLetterButton.isEnabled = false
        }
        else {
            guessLetterButton.isEnabled = true
            
        }
    }
    
    // Function that updates the userGuessLabel with the right amount of underscores depending on the word
    func updateUnderscores() {
        for _ in word {
            userGuessLabel.text! += "_ "
        }
    }

}

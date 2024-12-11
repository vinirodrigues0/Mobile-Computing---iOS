//
//  WelcomePageViewController.swift
//  Tech Store App
//
//  Created by Vinicius Rodrigues on 11/14/24.
//

import UIKit

// User clas to define user properties (name, email, password, and cart)
class User {
    var name: String?
    var emailAddress: String?
    var password: String?
    var cart: [Product]
    
    init(name: String? = nil, emailAddress: String? = nil, password: String? = nil, cart: [Product]) {
        self.name = name
        self.emailAddress = emailAddress
        self.password = password
        self.cart = cart
    }
}

class WelcomePageViewController: UIViewController {
    
    @IBOutlet weak var loginOrSignupOL: UISegmentedControl!
    
    @IBOutlet weak var welcomeStatusOL: UILabel!
    
    @IBOutlet weak var nameOL: UITextField!
    
    @IBOutlet weak var emailAddressOL: UITextField!
    
    @IBOutlet weak var passwordOL: UITextField!
    
    @IBOutlet weak var loginOrSignupBtn: UIButton!
    
    @IBOutlet weak var loginSignupStatusOL: UILabel!
    
    @IBOutlet weak var goToProductCatalogBtn: UIButton!
    
    // Initialize variables and an array to store users
    var name = ""
    var emailAddress = ""
    var password = ""
    var users = [User]()
    var index = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Initial view: Login
        welcomeStatusOL.text = "Welcome back 👋\nPlease enter your details to sign in" // Login status displayed
        nameOL.isHidden = true // Hide the name text field
        loginOrSignupBtn.isEnabled = false //
        loginOrSignupBtn.setTitle("Login", for: .normal) // Set the title of the button to Login
        
        // Hide UI elements initially
        loginSignupStatusOL.isHidden = true
        goToProductCatalogBtn.isHidden = true

    }
    
    @IBAction func loginOrSignupValueChanged(_ sender: UISegmentedControl) {
        
        // If Login is selected in the SegmentedControl
        if loginOrSignupOL.selectedSegmentIndex == 0 {
            welcomeStatusOL.text = "Welcome back 👋\nPlease enter your details to sign in" // Login status displayed
            nameOL.isHidden = true // Hide the name text field
            loginOrSignupBtn.setTitle("Login", for: .normal) // Set the tile of the button to Login
            
            // Clear text fields
            nameOL.text = ""
            emailAddressOL.text = ""
            passwordOL.text = ""
            
            loginSignupStatusOL.text = ""
        
            loginOrSignupBtn.isEnabled = false
            goToProductCatalogBtn.isHidden = true
            
            emailAddressOL.becomeFirstResponder() // Focus the cursor on the email text field
        }
        // If Signup is selected in the Segmented Control
        else {
            welcomeStatusOL.text = "Welcome 👋\nPlease create your account" // Signup status displayed
            nameOL.isHidden = false // Show the name text field
            loginOrSignupBtn.setTitle("Signup", for: .normal) // Set the tile of the button to Signup
            
            // Clear text fields
            nameOL.text = ""
            emailAddressOL.text = ""
            passwordOL.text = ""
            
            loginSignupStatusOL.text = ""
            
            loginOrSignupBtn.isEnabled = false
            goToProductCatalogBtn.isHidden = true
            
            nameOL.becomeFirstResponder() // Focus the cursor on the name text field
        }
    }
    
    // Enable the Login/Signup button only if required fields are filled
    @IBAction func passwordEditingChanged(_ sender: UITextField) {
        if loginOrSignupOL.selectedSegmentIndex == 0 {
            if !emailAddressOL.text!.isEmpty && !passwordOL.text!.isEmpty {
                loginOrSignupBtn.isEnabled = true
            }
        }
        else {
            if !nameOL.text!.isEmpty && !emailAddressOL.text!.isEmpty && !passwordOL.text!.isEmpty {
                loginOrSignupBtn.isEnabled = true
            }
        }
    }

    @IBAction func loginOrSignupBtnClicked(_ sender: Any) {
        
        loginOrSignupBtn.isEnabled = false // Disable the Login/Signup button
        loginSignupStatusOL.isHidden = false // Show the status label
        
        // Login mode
        if loginOrSignupOL.selectedSegmentIndex == 0 {
            
            // Store the input from the user
            emailAddress = emailAddressOL.text!
            password = passwordOL.text!
            
            // Check if a user with the entered email and password exists
            for (idx, user) in users.enumerated() {
                // Login successful
                if user.emailAddress == emailAddress && user.password == password {
                    loginSignupStatusOL.text = "Login successful, \(user.name ?? "Name not found")! Click the button below to see the product catalog 😀 "
                    goToProductCatalogBtn.isHidden = false
                    emailAddressOL.becomeFirstResponder()
                    index = idx
                    break
                }
                // Login failed
                else {
                    loginSignupStatusOL.text = "Email address or password does not match any user. Please try again!"
                    emailAddressOL.becomeFirstResponder()
                    goToProductCatalogBtn.isHidden = true
                }
            }
            
            if users.isEmpty {
                loginSignupStatusOL.text = "Email address or password does not match any user. Please try again!"
                emailAddressOL.becomeFirstResponder()
            }
        }
        // Sigunp mode
        else {
            // Store the input from the user
            name = nameOL.text!
            emailAddress = emailAddressOL.text!
            password = passwordOL.text!
            
            // Create a new user
            let newUser = User(name: name, emailAddress: emailAddress, password: password, cart: [Product]())
            
            users.append(newUser) // Add the new user to the users array
            
            loginSignupStatusOL.text = "Signup successful! Please login with your information to be able to access the product catalog." // Display sigunp success message
            
            nameOL.becomeFirstResponder() // Focus the cursor on the name text field
        }
        
        // Clear the text fields 
        nameOL.text = ""
        emailAddressOL.text = ""
        passwordOL.text = ""
    }
    
    
    @IBAction func goToCatalogBtnClicked(_ sender: UIButton) {
        goToProductCatalogBtn.isHidden = true
        loginSignupStatusOL.text = ""
        
        // Clear the text fields
        nameOL.text = ""
        emailAddressOL.text = ""
        passwordOL.text = ""
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "loginToCatalogSegue" {
            let destination = segue.destination as! ProductCatalogViewController
            
            destination.users = users
            destination.index = index
        }
    }
    
}


//
//  ViewController.swift
//  Rodrigues_CalculatorApp
//
//  Created by Vinicius Rodrigues on 9/30/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Variables to hold the current number, operation, result, and operation count
    var number = ""
    var operation = ""
    var result : Double = 0
    var count = 0
    
    // Function that appends a number to the current input
    func appendNumber(num: Int) -> String {
        number += "\(num)"
        return number
    }
    
    // Function that appends a decimal point to the current input, allowing only one decimal
    func appendDecimal(decimal: String) -> String {
        if !number.contains(".") {
            number += "\(decimal)"
        }
        return number
    }
    
    // Function that performs the selected mathematical operation
    func performOperation() {
        
        // Initialize the result variable with the current number if it is the 1st operation
        if (result == 0) {
            result = Double(number)!
        }
        
        // Perform the selected mathematical operation
        else {
            if (operation == "division") {
                result /= Double(number)!
            }
            
            else if (operation == "multiplication") {
                result *= Double(number)!
            }
            
            else if (operation == "plus") {
                result += Double(number)!
            }
            
            else if (operation == "modulo") { // Calculate modulo    and round it
                result.formTruncatingRemainder(dividingBy: Double(number)!)
                result = (result * 10).rounded() / 10
            }
            
            else if (operation == "minus") {
                result -= Double(number)!
            }
            
            count += 1  // Increment operation count
        }
    }
    
    // Function that displays the result in the label, formating as needed
    func displayResult() {
        let output = String(result)
        
        if (output.hasSuffix(".0")) {
            resultOutlet.text = "\(output[output.startIndex..<output.index(output.endIndex, offsetBy: -2)])"
        }
        else if (output[output.index(output.endIndex, offsetBy: -3)] == ".") {
            resultOutlet.text = "\(output)"
        }
        else if (output[output.index(output.endIndex, offsetBy: -2)] == ".") {
            resultOutlet.text = "\(output)"
        }
        else if (output.contains(".")) {
            resultOutlet.text = "\(String(format: "%.2f", result))"
        }
        else {
            resultOutlet.text = "Not a number"
        }
    }
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    // Action for the decimal button
    @IBAction func buttonDecimal(_ sender: UIButton) {
        resultOutlet.text = appendDecimal(decimal: ".")
    }
    
    // Actions for number buttons (0-9)
    @IBAction func buttonZero(_ sender: UIButton) {
        resultOutlet.text = appendNumber(num: 0)
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        resultOutlet.text = appendNumber(num: 1)
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        resultOutlet.text = appendNumber(num: 2)
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        resultOutlet.text = appendNumber(num: 3)
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        resultOutlet.text = appendNumber(num: 4)
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        resultOutlet.text = appendNumber(num: 5)
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        resultOutlet.text = appendNumber(num: 6)
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        resultOutlet.text = appendNumber(num: 7)
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        resultOutlet.text = appendNumber(num: 8)
    }
    
    @IBAction func buttonNine(_ sender: UIButton) {
        resultOutlet.text = appendNumber(num: 9)
    }
    
    // Action for the "All Clear" button
    @IBAction func buttonAC(_ sender: UIButton) {
        result = 0
        count = 0
        number = ""
        operation = ""
        resultOutlet.text = "0"
    }
    
    // Action for the "Clear" button
    @IBAction func buttonC(_ sender: UIButton) {
        number = ""
        resultOutlet.text = "0"
    }
    
    // Action for changing the sign of the current operation
    @IBAction func buttonChange(_ sender: UIButton) {
        if (operation == "plus") {
            operation = "minus"
        }
        else if (operation == "minus") {
            operation = "plus"
        }
    }
    
    // Action for the division button
    @IBAction func buttonDivision(_ sender: UIButton) {
        performOperation()
        
        if (count > 0) {
            displayResult()
        }
        
        operation = "division"
        
        number = ""
    }
    
    // Action for the multiplication button
    @IBAction func buttonMultiplication(_ sender: UIButton) {
        performOperation()
        
        if (count > 0) {
            displayResult()
        }
        
        operation = "multiplication"
        
        number = ""
    }
    
    // Action for the subtraction button
    @IBAction func buttonMinus(_ sender: UIButton) {
        performOperation()
        
        if (count > 0) {
            displayResult()
        }
        
        operation = "minus"
        
        number = ""
    }
    
    // Action for the addition button
    @IBAction func buttonPlus(_ sender: UIButton) {
        performOperation()
        
        if (count > 0) {
            displayResult()
        }
        
        operation = "plus"
        
        number = ""
    }
    
    // Action for the modulo button
    @IBAction func buttonModulo(_ sender: UIButton) {
        performOperation()
        
        if (count > 0) {
            displayResult()
        }

        operation = "modulo"
        
        number = ""
    }
    
    // Action for the equals sign button, once clicked it displays the final result
    @IBAction func buttonResult(_ sender: UIButton) {
        
        performOperation()
        
        displayResult()
    }
    
}

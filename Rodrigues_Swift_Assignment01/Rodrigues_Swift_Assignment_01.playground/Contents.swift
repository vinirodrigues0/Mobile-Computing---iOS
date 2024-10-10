import UIKit

//*******Questions******//

// 1. In which year was the first version of the Swift programming language introduced? Explain about type safety and type inference in Swift?

print("The first version of the Swift programming language was introduced in 2014. Type safety encourages you to declare the type of a variable/constant once declared. On the other hand, type inference does not require you to declare the type, the compiler will automatically deduce the type of the variable/constant based on the value provided. The good thing is that Swift allows you to use both types, explicit type declaration is optional but can be used if needed.")
print("----------------------")

// End of question 1


// 2. Declare a constant 'pi' of type Double and assign it the value 3.14. Calculate the volume of Cylinder with a diameter of 15 and height of 12.0 units. using the formula: Volume =  pi * radius*radius*height. Print the obtained result as shown in sample output.

let pi: Double = 3.14
var diameter: Double = 15
var height: Double = 12
var radius: Double = diameter / 2
var volume: Double = pi * radius * radius * height
print("The volume of Cylinder is \(volume) units")
print("----------------------")

// End of question 2


// 3. Declare a variable with a value of 102.9°F, convert it to Celsius, and round it to two decimal places. Then, print the result in the following format using a single print statement. [Replace the **** with converted celsius value.]
// Fahrenheit: 102.9 F and Celsius: **** C

var fahrenheit: Double = 102.9
var celsius: Double = (fahrenheit - 32) * 5/9
print("Fahrenheit: \(fahrenheit) F and Celsius: \(String(format: "%.2f", celsius)) C")
print("----------------------")

// End of question 3


// 4. Write four aspects about your career aspirations using four print statements and display the first three aspects on first line, and the fourth aspect on the next line.

print("I aspire to become a skilled software developer", terminator: ", ")
print("contribute to innovative projects", terminator: ", ")
print("and continuously improve my technical skills.")
print("Additionally, I aim to lead a team one day.")
print("----------------------")

// End of question 4


// 5. Display the following using a single print statement.
// "Swift is a safe and fast programming language that combines the best in modern language thinking with wisdom from diverse open source.It is a powerful and intuitive programming language for iOS, iPadOS, macOS, tvOS, and watchOS.
//   Writing Swift code is interactive and fun, the syntax is concise yet expressive, and Swift includes modern features   developers love.
//Its an industrial quality programming language. The compiler is optimized for performance and the language is optimized for development.
//The Swift programming offers safety and speed. It provides type inference, pattern matching.
//   Swift code is safe by design and produces software that runs lightning-fast."

print("Swift is a safe and fast programming language that combines the best in modern language thinking with wisdom from diverse open source. It is a powerful and intuitive programming language for iOS, iPadOS, macOS, tvOS, and watchOS. Writing Swift code is interactive and fun, the syntax is concise yet expressive, and Swift includes modern features developers love. Its an industrial quality programming language. The compiler is optimized for performance and the language is optimized for development. The Swift programming offers safety and speed. It provides type inference, pattern matching. Swift code is safe by design and produces software that runs lightning-fast.")
print("----------------------")

// End of question 5


// 6. Declare a variable called 'number1' and assign it a three-digit integer. Next, declare another variable called 'number2' and assign it a different three-digit integer. Then, create a third variable named 'product' to store the result of multiplying 'number1' and 'number2'. Write code to calculate the number of digits in the product and print the result. For example, if the number1 is 987, and number2 is 118 the output should be: 'The product of two numbers is 116466 and it contains  6 digits.' Take any two numbers of your choice.

var number1 = 123
var number2 = 456
var product = number1 * number2
print("The product of two numbers \(number1) and \(number2) is \(product) and it contains \(String(product).count) digits")
print("----------------------")

// End of question 6


// 7. Create a variable with value "Welcome to iOS Mobile Computing Class!!".Print the total number of characters in the above text excluding spaces and then print each character separated by "+". Exlcude the spaces.

var welcome = "Welcome to iOS Mobile Computing Class!!"
var welcomeWithoutSpaces = welcome.replacingOccurrences(of: " ", with: "")
var characters = Array(welcomeWithoutSpaces)
print("The number of characters excluding spaces in the above text is \(welcomeWithoutSpaces.count)")
print("The modified text is:")
print(characters[0], characters[1], characters[2], characters[3], characters[4], characters[5], characters[6], characters[7], characters[8], characters[9], characters[10], characters[11], characters[12], characters[13], characters[14], characters[15], characters[16], characters[17], characters[18], characters[19], characters[20], characters[21], characters[22], characters[23], characters[24], characters[25], characters[26], characters[27], characters[28], characters[29], characters[30], characters[31], characters[32], characters[33], separator: "+")
print("----------------------")

// End of question 7


// 8.An object begins its motion with an initial velocity of 8.75 m/s and accelerates at a constant rate of 4.25 m/s² along a straight path. Its final velocity at the end of the motion is 12.5 m/s. Calculate the displacement of the object and print the result in the specified format using print statements.[Replace the **** with converted Displacement value.] Use the formula:    displacement = ((final velocity*final velocity) - (initial velocity*initial velocity))/(2*acceleration)

var initialVelocity = 8.75
var acceleration = 4.25
var finalVelocity = 12.5
var displacement = ((finalVelocity * finalVelocity) - (initialVelocity * initialVelocity)) / (2 * acceleration)
print("Initial Velocity: \(initialVelocity) m/s")
print("Final Velocity: \(finalVelocity) m/s")
print("Displacement: \(displacement) m")
print("----------------------")

// End of question 8

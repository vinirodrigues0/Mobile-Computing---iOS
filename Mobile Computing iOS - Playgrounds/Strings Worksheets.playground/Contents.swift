import UIKit

// Strings 01 Worksheet
print("Strings 01 Worksheet")

var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"

// a.
fact.count

// b.
fact += ", it has a better memory management"

// c.
dev.append(" by Apple")

// d.
author.lowercased()

// e.
author.uppercased()

// f.
author[author.startIndex]

// g.
author[author.index(before: author.endIndex)]

// h.
dev[dev.startIndex]

// i.
dev[dev.index(before: dev.endIndex)]

// j.
author[author.index(after: author.startIndex)]

// k.
author[author.index(author.startIndex, offsetBy: 5)]

// l.
author[author.index(author.endIndex, offsetBy: -5)]

// m.
fact[fact.index(fact.endIndex, offsetBy: -4)]


// Strings 02 Worksheet
print("\nStrings 02 Worksheet")

var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

// a.
if clothes.hasPrefix("Socks") {
    print("The first item in clothes is socks")
}
else {
    print("Socks is not the first item in clothes")
}

// b.
print(foodItems.split(separator: ", "))

// c.
if clothes.contains(",") {
    print("Clothes contains more than one item")
}
else {
    print("Clothes contain only one item")
}

// d.
foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex, offsetBy: -7)]

// e.
shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy: 8)..<foodItems.endIndex]

// f.
clothes.remove(at: clothes.firstIndex(of: "T")!)

// g.
clothes.remove(at: clothes.firstIndex(of: "-")!)

// h.
print("\(shoppingList), \(clothes)")

// i.
clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)

// j.
var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)
print(shoppingList[..<firstIndexOfR])


// Strings 03 Worksheet
print("\nStrings 03 Worksheet")

var course = "44643-Mobile Computing-iOS"

// I. Display only course number
course[course.startIndex..<course.firstIndex(of: "-")!]

// II. Display only the title of the course
course[course.index(after: course.firstIndex(of: "-")!)..<course.endIndex]

// III. Display the first word of the title
course[course.index(after: course.firstIndex(of: "-")!)..<course.firstIndex(of: " ")!]

// IV. Display just "Mobile Computing" without the iOS at the end
course[course.index(after: course.firstIndex(of: "-")!)..<course.lastIndex(of: "-")!]

// Strings 04 Worksheet
print("\nStrings 04 Worksheet")

// 1)
let password = "Demo@123"
let confirmPassword = "Demo@123"

if (password == confirmPassword) {
    print("Password matches")
}
else {
    print("Passwords does not match")
}

// 2)
let currentYear = "2021"
var enteredYear = "2020"

if (currentYear.elementsEqual(enteredYear) == true) {
    print("Entered year matches with current year")
}
else {
    print("Entered year does not match with current year")
}

// 3)
var vehiclePoweredBy = "Diesel"

if (vehiclePoweredBy != "Electricity") {
    print("Vehicle is not eco-friendly")
}
else {
    print("Vehicle is eco-friendly")
}

// 4)
let nameGiven = "Anthony Martial"
var enteredName = "ANTHONY MARTIAL"

if (nameGiven.lowercased() == enteredName.lowercased()) {
    print("Entered name and given name matches with each other")
}
else {
    print("Entered name does not match with the given name")
}


let number1 = 7.4
let number2 = 1.8

// Calculate the result
let quotient = number1 / number2
let flooredQuotient = floor(quotient)
let largestMultiple = flooredQuotient * number2
let result = number1 - largestMultiple
print(number1)

// Print the result
print(result)  // Output: 0.2

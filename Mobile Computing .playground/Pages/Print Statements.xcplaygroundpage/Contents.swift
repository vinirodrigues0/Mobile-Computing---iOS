// Print Statements Worksheet

// 1.
print("Hii", 10, 12.25)

// 2. Print statement using String Interpolation
var programmingLanguage = "Swift"
print("My favorite programming language is \(programmingLanguage)")

// 3.
var age = 23
print("You are \(age) years old and in another \(age) years, you will be \(age * 2)")

// 4.
print("""
Hello
World!
""")

// 5.
print("Hello All, \rWelcome to Swift programming")

// 6.
let welcomeMessage: String = "Hello!"
print(welcomeMessage, "All")

// 7. Usuallly a print statement is terminated by a new line. To separate the print statements other than new line, we use the terminator
print("Welcome to Swift Programming")
print("Fall 2021")
print("****************")
print("Welcome to Swift Programming", terminator: "-")
print("Fall 2021")

// 8. In general, the items in a print statement are separated by spaces, to print the items separated by something other than spaces, we use the separator
print("The list of numbers are ")
print(1,2,3,4,5,6)
print("The new pattern is")
print(1,2,3,4,5,6, separator: "-")

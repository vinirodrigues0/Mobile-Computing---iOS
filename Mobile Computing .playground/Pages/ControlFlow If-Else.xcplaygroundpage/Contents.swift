// 1)
print("1)")
var marks = 45
if marks > 50 {
    print("The student had passed with \(marks) marks")
}
else {
    print("The student had managed to get \(marks) marks")
}

// 2)
print()
print("2)")
var inputNumber = -10
if inputNumber > 0 {
    print("\(inputNumber) is a positive number")
}
else if (inputNumber < 0) {
    print("\(inputNumber) is a negative number")
}
else {
    print("The number is 0")
}

// 3)
print()
print("3)")
var stars = 65
if (stars >= 90) {
    print("You are a Pro Member")
}
else if (stars >= 78 && stars < 90) {
    print("You are a Gold Member")
}
else if (stars >= 65 && stars < 78) {
    print("You are a VIP Member")
}
else {
    print("Default Plan")
}

// 4)
print()
print("4)")
var password: String = "stephen@171"
if (password.count > 8) {
    if (password.contains(" ")) {
        print("Password Should not contain space")
    }
    else {
        print("Password is Strong")
    }
}
else {
    print("A password should be minimum of 8 characters")
}

// 5)
print()
print("5)")
var male: Bool = false
var age = 45
if male {
    if age < 20 {
        print("BOY")
    }
    else {
        print("MAN")
    }
}
else {
    if age < 20 {
        print("Girl")
    }
    else {
        print("Woman")
    }
}

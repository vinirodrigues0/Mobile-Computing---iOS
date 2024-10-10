import UIKit

// 01 Arrays Worksheet
print("01 Arrays Worksheet\n")

// 1.
var numbers: [Int] = [2, 3, 4]
print(numbers)

// 2.
var emptyArray = [Int]()
print(emptyArray)

// 3.
var programmingLanguages = ["Swift", "Java", "Python"]
print(programmingLanguages[0])

// 4.
programmingLanguages[0] = "Java Script"
print(programmingLanguages[0])

// 5. Answer the below questions
var names: [String] = ["Oliver", "Elijah", "James"]

// a.
print("Before appending \(names)")
names.append("Masthan")
print("After appending \(names)")

// b.
print("Before inserting \(names)")
names.insert("Benjamin", at: 2)
print("After inserting \(names)")

// c.
print(names.count)

// d.
names.sort()
print("After sorting \(names)")

// e.
names.reverse()
print("After reversing \(names)")

// f.
names.remove(at: 2)
print("After removing \(names)")

// g.
names.swapAt(1, 2)
print("After swapping \(names)")

// 6.
var oddNumbers = [1, 3, 5, 7]
var evenNumbers = [2, 4, 6, 8]
oddNumbers.append(contentsOf: evenNumbers)
print("After combining \(oddNumbers)")


// 01 Dictionaries Worksheet
print("\n01 Dictionaries Worksheet\n")

// 1.
var capitals = ["Arkansas": "Little Rock", "Georgia": "Atlanta"]
print(capitals)

// 2.
print(capitals.count)

// 3.
var numbersDict = [1: "One", 2: "Two", 3: "Three"]
print(numbersDict)

numbersDict[4] = "Four"
print(numbersDict)

// 4.
var courses = [44542: "Java", 44560: "Database", 44613: "Data Visualization"]

// a.
print("Before changing \(courses)")
courses[44542] = "Java Script"
print("After changing \(courses)")

// b.
print(courses[44542]!)

// c.
courses.removeValue(forKey: 44613)
print(courses)

// d.
for (key, values) in courses {
    print(key)
}

// e.
for (key, values) in courses {
    print(values)
}

// f.
for (key, values) in courses {
    print("\(key): \(values)")
}


// 01 Sets Worksheet
// Sets are unordered collection of data
// You can print the values in any order
print("\n01 Sets Worksheet\n")


// 1. Answer the below questions
var players: Set<String> = ["David Warner", "Virat Kohli", "Kane Williamson", "Steve Smith"]

// a.
print(players.count)

// b.
print(players)

// c.
print(players.contains("Steve Smith"))

// d.
players.insert("Maxwell")
print(players)

// e.
players.remove("David Warner")
print(players)

// 2.
var primeNumbers: Set<Int> = [2, 3, 5, 7, 11]
var numbersList: Set<Int> = [1, 2, 5, 9]

// a.
var unionSet: Set<Int> = primeNumbers.union(numbersList)
print(unionSet)

// b.
var intersectionSet: Set<Int> = primeNumbers.intersection(numbersList)
print(intersectionSet)

// c.
var subtractionSet: Set<Int> = primeNumbers.subtracting(numbersList)
print(subtractionSet)

// d.
var symmDiffSet: Set<Int> = primeNumbers.symmetricDifference(numbersList)
print(symmDiffSet)

// e.
print(primeNumbers.isSubset(of: numbersList))

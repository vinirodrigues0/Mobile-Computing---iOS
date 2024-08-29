// 01 Tuples Worksheet

// 1.
var httpError = (errorCode : 404, errorMessage: "Page Not Found")
print(httpError)
print(httpError.errorCode, terminator: ": ")
print(httpError.errorMessage)

// 2.
var name = ("John", "Smith")
var fName = name.0
var lName = name.1
print(fName, terminator: ",")
print(lName)

// 3.
var origin = (x : 0, y : 0)
var point = origin
print(point)
print("(\(origin.x), \(origin.y))")

// 4.
let city = (name: "Maryville", population: 11000)
let (cityName, cityPopulation) = (city.0, city.1)
print(cityName)
print(cityPopulation)

// 5.
let groceries = ("bread", "onions", true, 11, 13.5)
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

// 6.
var fname = "Joe"
var lname = "Root"
(fname, lname) = (lname, fname)
print("First Name is \(fname) and Last Name is \(lname)")

// 7.
var cricketKit = ("handGloves", "helmet", ("bat", "ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2)
print(cricketKit.2.0)
print(cricketKit.2.1)

// 8. Example created by me (Vinicius Rodrigues)
var tennisRackets = ("Wilson Ultra", "Wilson Blade", "Yonex Ezone", "Yonex Vcore", "Babolat Aero", "Head Speed")
var vini = tennisRackets.0
var tessa = tennisRackets.1
var mason = tennisRackets.2
var stan = tennisRackets.3
var nadal = tennisRackets.4
var djoko = tennisRackets.5
print("Vini's racket is \(vini)")
print("Tessa's racket is \(tessa)")
print("Mason's racket is \(mason)")
print("Stan's racket is \(stan)")
print("Nadal's racket is \(nadal)")
print("Djoko's racket is \(djoko)")

// 1)
print("1)")
print(4 > 5 && 8 > 3)
print(5 > 7 || 8 < 2 * 5)
print(!(5 <= 4 || 6 != 5 && 10 >= 4))

// 2)
print()
print("2)")
var x: Int = 12;
var y: Int = 7;
var z: Int = 5;
var a: Bool = true;
var b: Bool = false;

print(x - z == y)
print(x * z > z * y || b)
print(x * z < z * y && a)
print(x * z > z * y && a || b)
print(!(x * z > z * y && a || b))

// 3)
print()
print("3)")
var firstNumber: Int = 10
var secondNumber: Int = 25
print(secondNumber / firstNumber)

var four = 4
var finalNumber = -four
print(finalNumber)

var number1 = (3,4)
var number2 = (4,5)
print(number1 < number2)

var s = "10"

var i = Int(s);

var product = (i ?? <#default value#>)*2;

print(product)

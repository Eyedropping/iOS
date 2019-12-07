import UIKit

let name: String = "Nikita" // declared and initianlized a string constatnt ": String is not obligatory though Swift is a strictly-typed language

let name6 = "Nikita" // same const but w/o type specifier (comliler implicitly do this its own way)

// same shit below
var courseNumber = 1
var courseNumber2: Int = 1

courseNumber = 2 // assigned a new value to previously declared and initialized var

// main data types below
var t1: Int = 1
var t11: Int64 = 1000000000000
var Pi: Double = 3.14 // 32-bit, 16 symbols after point
var t3: String = "Hello! You are capable of doing anything you want!"
var t4: Bool = true

// when performing math actions with two vars of different types it is mandatory to bring them to one type via casting as shown below [<type to be casted to>(name of the var to be casted to)
var intPdouble = Int64(Pi) + t11
var Pi2 = Int(Pi)

// strings can be concatenated via '+' sign
var FName = "Dima"
var LName = "Aksyonov"
var FIO = FName + " " + LName

// strings can be complemented with other vars (and you can even perform simple operations with them
var CourseGreeting = "Welcome to the \(courseNumber + 1) course!"

// another type - tuples - can store multiple values of different types
var HttpError = (404, "Not found", false)
var FormattedError0 = "Error: \(HttpError.0)"
var FormattedError1 = "Error: \(HttpError.1)"
var FormattedError2 = "Error: \(HttpError.2)"

// data within the tuple can be named for faciliation
var HttpError0 = (errCode: 404, msg: "Not found", result: false)
var FormattedError00 = "Error: \(HttpError0.errCode)"
var FormattedError10 = "Error: \(HttpError0.msg)"
var FormattedError20 = "Error: \(HttpError0.result)"

// data from tuples can be merged into other var or const - below some names assigned to the tuple components
var HttpError00 = (404, "Not found", false)
var (code, msg, res) = HttpError00

// below are some math operations with vars and consts - addition and subtraction
let numberOfAttempts = 3
var currAtt = 1
currAtt += 1 // mixed operator - addition + assignment
currAtt -= 2
let description = "You have \(numberOfAttempts - currAtt) attempts left! Good luck!"
let remAtt = numberOfAttempts - currAtt

// multiplication and division
var fac1 = 8
var fac2 = 8
var prod = fac1 * fac2

var div = prod
var den = fac2
var res1 = div / den

// comparison
currAtt == 8
currAtt != 8
numberOfAttempts == 3
FName == "Anton"
var FName2 = "Antonio"
currAtt < 1
var haslogin = true
haslogin != haslogin
haslogin = !(currAtt == 4)

// logical AND &&
var Hlogin = true
var HPwd = false
var CanEnterApp = Hlogin && HPwd

// logical OR ||
var Hlogin0 = true
var HPwd0 = false
var CanEnterApp0 = Hlogin || HPwd

// all below as per Swift Guidebook

let const1: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3;
let oranges = 5;
let pi = 6.24
let zdec = 3.10

// operations with strings and nested vars
let applesummary = "I have \(apples) apples!"
let fruitsummary = "I have \(apples + oranges) fruits in total!"
let FruitGreeting = "Wow, \(FName)! This is absolutely \(pi - zdec)zdec!!! You have \(apples + oranges) fruits in total, won't your ass SLIPNETSYA?!!?!?"

// operations with multi-line strings and nested manipulation of vars
let DimasThoughts = """
I said, "this is \(pi-zdec)ZDEC!!!"
And then yelled "MY ASS!!!"
I cried out loud "GOD I WISH I HAD A HOE NEAR ME WHO WOULD EAT \(apples - 1) of my APPLES!!!"
\(FName2)!!!! YOU MORON COULDNT EVEN HELP ME TO EAT JUST \(apples - 2) MERE APPLE.
MY ASS WAS \(zdec) in diameter and now it's breaking the \(pi) TRESHOLD.
All this fucking crazy train is \(pi == zdec)... This is not \(pi != zdec)...
"""

print(DimasThoughts)
print("\n\n")

// arrays and dictionaries
var shoppingList = [String]() // array
shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water" // reassigning the value of the second (i = 1) element of an array
print(shoppingList)

var occupations = [String: String]() // dictionary
occupations = [
    "Valmont": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations" // adding this element to the BEGINNING of an array
print(occupations)
print("\n")

shoppingList.append("blue paint")
print(shoppingList)
print("\n")

let emptyarray = [String]()
let emptyDisctionary = [String: Float] ()

// control flow

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores
{
    if score > 50 // condition should be a boolean value
    {
        teamScore += 3
    }
    else
    {
        teamScore += 1
    }
}
print(teamScore)
print("\n")

// optionals

var optionalString: String? = "Hello!"
print(optionalString == nil)
var optionalString2: String?
print(optionalString2 == nil)
print("\n")

// experiment
    // option with control flow processing nil optional
var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)!"
}
else {
    greeting = "Hello!.. Human?!"
    
}
    // option with control flow processing not nil optional
var optionalName0: String? = "Dima"
var greeting0 = "Hello!"
if let name2 = optionalName0 {
    greeting = "Hello, \(name2)!"
}
else {
    greeting = "Hello!.. Human?!"
    
}

// ?? operator with optionals
let nickname: String? = nil
let fullname: String = "Dimka"
let informalGreeting = "Hi, \(nickname ?? fullname)" // the optionl value is missing - the default value used instead

// switch
let vegetable = "red pepper"
switch vegetable { // no explicit breaks
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucmber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"): // searches X-constant for a certain suffix
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup")
}
print("\n")

// for-in (iterates over items in a dic to meet a specified condition)
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var largestKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print("The largest number is \(largest) of \(largestKind)s.")
print("\n")

// while (runs as much times as long the condition is met)
var n = 2
while n < 100 { // classic C-like while loop
    n *= 2
}
print(n)
print("\n")

var m = 2
repeat { // loop, implemented via repeat operator
    m*=2
} while m < 100
print(m)
print("\n")

var total = 0
for i in 0..<4 { // this means 0 + 1 + 2 + 3 = 6
    total += i
}
print(total)
print("\n")

// functions and clusores
func greet(person: String, day: String) -> String /* "-> String" means that the retun value type will be string */{
    return "Hello \(person), today is \(day), I'm sure you cope with everything!"
}

greet(person: "Dimka", day: "Tuesday") //calling a function

func greet1(person: String, todayLunchSpecial: String) -> String {
    return "Hello \(person), today's lunch special is \(todayLunchSpecial), I'm sure you will enjoy the taste!"
}

greet1(person: "Dimka", todayLunchSpecial: "Pizza Spinacci")

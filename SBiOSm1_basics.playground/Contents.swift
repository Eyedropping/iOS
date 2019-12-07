import UIKit

// vars
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

/* ml comment /* nested */ end of ml */

let cat = "Meow!"; print(cat); print("\n") // multiple statements in a single line.

var num1 = 1
var num2 = 0
var num3 = -1
var num4: UInt8 = 3
var num5: Int32 = 2093230923

// int max value and min value
let minValue = UInt8.min; print(minValue)
let maxValue = UInt8.max; print(maxValue); print("\n")

// floating-point nums
var fl1: Float32 = 3.12; print(fl1) // has precision of 6 dig after .
var fl2: Float64 /* = double */ = 3.14; print(fl2); print("\n") // has precision of 15 dig after .

// type inference
let meaningOfLife = 42; print(meaningOfLife); print("\n") // this const is inferred to be int
let pi = 3.14; print(pi); print("\n") // this const is inferred to be double
let anotherPi = 3.14 + 2; print(anotherPi); print("\n") // this const is auto-inferred to be double

// numeric literals
let decimalInt = 17
let binaryInt = 0b10001
let octalInt = 0o21
let hexadeciamlInt = 0x11
print(decimalInt, binaryInt, octalInt, hexadeciamlInt); print("\n");
let exp1 = 1.25e2 // e2 means "multiplied by 10^2
let exp2 = 1.25e-2 // e-2 means "multiplied by 10^-2
let exp3 = 0xFp2 // p3 means "multiplied by 2^2
let exp4 = 0xFp-2 // p-2 means "multiplied by 2^-2
print(exp1, exp2, exp3, exp4); print("\n")
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
print(decimalDouble, exponentDouble, hexadecimalDouble, "\n")
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1
print(paddedDouble, oneMillion, justOverOneMillion, "\n")

// numeric type conversion
// integer conversion
let twoK: UInt16 = 2_000
let one: UInt8 = 1
let SUM = twoK + UInt16(one) // two ints of the different type cannot be added together, so we cast the latter via SomeType(ofInitialValue).
print(twoK, one, SUM, "\n")

// integer and floating-point conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi2 = Double(three) + pointOneFourOneFiveNine // converted const three into double to allow correct addition
print(pi2, "\n")
let integerPi2: Int = Int(pi2)
print(pi2, integerPi2, "\n") // as we see, the integerPi2 was truncated to look like an integer type.

// type aliases
typealias AudioSample = UInt16
var maxAmptitudeFount = AudioSample.min
print(maxAmptitudeFount, "\n")

// booleans
let orangesAreOrange = true
let turnipsAreDelicious = false
if turnipsAreDelicious { // by-default the control flow assumes that the value is true if it is not typed explicitly
    print("Mmmm... Tasty turnips!..")
} else {
    print("Eww, turnips are horrible!")
}
let i = 1
if i == 1 {
    print("Success!", "\n")
}

// tuples
let http404Error = (404, "Not Found") // here a tuple combines two types - integer and a string
print(http404Error)
let (statusCode, statusMessage) = http404Error // here a tuple was decomposed into separate constants - statusCode and statusMessage
print("The status code returned is \(statusCode)"); print("The status message is: \(statusMessage).") // printing put the deecomposed parts
let(justTheStatusCode, _ /* ignored the second tuple element while deecomposing */) = http404Error
print("The status code solely is: \(justTheStatusCode)")
print("The status code is \(http404Error.0)"); /* printed the 0th index of http404Error const*/ print("The status message is: \(http404Error.1)") /* printed the 1st index of http404Error const*/
let http200status = (statusCode: 200, description: "OK") // named the elements of the tuple - statusCode and description respectively
print("The status code is \(http200status.statusCode).", "The status message is: \(http200status.description).", "\n")

// optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) // this is an optional int because the conversion may fail, so the initializer returns optional
print(possibleNumber)
var serverResponseCode: Int? = 404 // set an optional int var and assigned it to 404
serverResponseCode = nil // assigned no value to the var
var surveyAnswer: String?;

// If Statements and Forced Unwrapping
if convertedNumber != nil {
    print("The var contains a value of \(convertedNumber!).")
}

// optinal binding
if let optBindConst = convertedNumber {
    print("Success!")
    print(optBindConst)
}

if let actualNumber = Int(possibleNumber) {
    print("The string \(possibleNumber) has the integer value of \(actualNumber).")
} else {
    print("The string \(possibleNumber) could not be converted to an integer.") /* If the optional Int returned by Int(possibleNumber) contains a value, set a new constant called actualNumber to the value contained in the optional.*/
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100 ")
}
if let FirstNumber0 = Int("4") { // can be written as the series of nested ifs
    if let secondNumber0 = Int("42") {
        if FirstNumber0 < secondNumber0 && secondNumber0 < 100
        {
            print("\(FirstNumber0) < \(secondNumber0) < 100")
        }
    }
}

var name1 = "Nikita", name2 = "Anton", name3 = "Maria"


// home work
let randomSchoolMarks = (Dima: 5, Masha: 4, Anya: 4, Tolya: 2)
print(randomSchoolMarks.Dima)

let taleAboutCrow = ("piece of cheese", 1, "the God", 1990)
print("\(taleAboutCrow.2) somehow at \(taleAboutCrow.3) has sent to Crow a \(taleAboutCrow.0).")

let age = 25
let name = "Nikita"
let greeting = "Hello, \(name), your age is \(age)"

let randomValues = ("400", 3 + 2, "Hello!")
print(randomValues.1)

// implicilty unwrapped optionals
let possibleString: String? = "An optional string"
let forcedString: String = possibleString! // here unwrapping an optional requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped ptional string"
let implicitString: String = assumedString // no need of an !-mark while implicitly unwrapping

if assumedString != nil {
    print(assumedString!)
} else {
    print("Smt is nil")
}

if let definiteString = assumedString {
    print(definiteString)
}

// error handling
func canThrowAnError() throws {
    // this func may or may not throw an error
}

do {
    try canThrowAnError()
    // no err
} catch {
    // am err was thrown
}

func makeASandwich() throws {
    // ...
}

// assertions and preconditions

let num1 = "1231"
let convNum1 = Int(num1)

if convNum1 == nil {
    print("The selected var is nil, mb you add some value?")
} else {
    print("Wow! Seems it has some int value! Here it is: \(convNum1!)") // !-mark is very important here!!!
}

if let num4print = convNum1 {
    print("The optional is not empty. It contaiins the value of \(num4print).")
} else {
    print("Wow! Such empty!")
}

if let num4print = Int(num1) {
    print("The optional can be converted to the integer with the value of \(num1).")
} else {
    print("Wow! \(num1) cannot be converted!")
}

// multi-optional binding
if let firstNum = Int("4"), let secondNum = Int("42") /* defined two constants in the if scope */, firstNum < secondNum && secondNum < 100 {
    print("\(firstNum) < \(secondNum) < 100.")
} else {
    print("Wow! Such non-convertible!")
}


// implicitly unwrapped optionals
let assumedString: String! /* this excl. mark shows that the optional is impl. unwr. */ = "Hello! Wish you prosper!" // defined an impl. unwr. opt.
let implicitString = assumedString // when binding - no need to use !-mark. bc the above optional is already impl. unwr.

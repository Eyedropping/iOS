let num1 = "1231"
let convNum1 = Int(num1) // this optional is unwrapped to int as the string could be converted

let num2 = "hello, Dima"
let convNum2 = Int(num2) // this optional is nil, as "hello, Dima" cannot be converted to int

var serverResponseCode: Int? = 404 // set an optional var
serverResponseCode = nil // assigned it to "no-value"

var surveyAnswer: String? // this optional is automatically set to nil

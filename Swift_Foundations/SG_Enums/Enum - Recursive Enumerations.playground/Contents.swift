// RECURSIVE ENUMERATIONS

enum ArithmeticExpression { /* if all cases are indirect you can place 'indirect' before the enum type */
    case number(Int)
    indirect case addition (ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication (ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum  = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, four)

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(five))
print(evaluate(four))
print(evaluate(sum))
print(evaluate(product))

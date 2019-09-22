func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 4
let moveToZero = chooseStepFunction(backward: currentValue > 0)

var age = Int("25.") ?? 0 // если значение, присвоенное данной переменной невозможно конвертировать в int - присваивается 0

var result = age < 18 ? "Hello, young man/woman" : "Hello grown man/woman"
result += " \(age)"



func sortArray (_ arr: [Int]) -> [Int] {
    return arr.sorted()
}

let arr = [3, 5, 7, 4, 8, 99, 4]

sortArray(arr)

// funcs w/o parameters
func sayHelloWorld() -> String {
    return "Hello, world."
}

print(sayHelloWorld(), "\n")

// func with params
func greet0(person: String) -> String { // задаем функцию приветствия
    return "Hello, " + person + "!"
}

func greetAgain(person: String) -> String { // задаем функцию повторного приветствия
    return "Hello again, " + person + "!"
}

func greet(person: String, alreadyGreeted: Bool) -> String { // воспроизведенный пример из гайдбука
    if alreadyGreeted == true {
        return greetAgain(person: person) // вызываем повторное приветствие, если знаем, что человека уже поприветствовали
    } else {
        return greet0(person: person) // вызываем приветствие, если человека обделили вниманием
    }
}

print(greet(person: "Sasha", alreadyGreeted: true), "\n")
print(greet(person: "Dima", alreadyGreeted: false), "\n")

// funcs w/o return value
func greetWOret(person: String) {
    print("Hello, \(person)!")
}
greetWOret(person: "Sasha")


func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

func printWOCount(string: String) {
    let _ = printAndCount(string: string)
}

printAndCount(string: "Hello, world!")
printWOCount(string: "Hello, world!")


// funcs w multiple return values
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array {
        if currentMax < value {
            currentMax = value
        } else if currentMin > value {
            currentMin = value
        }
    }
    
    return (currentMin, currentMax)
}

print(minMax(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is: \(bounds.min) ; max is: \(bounds.max).")

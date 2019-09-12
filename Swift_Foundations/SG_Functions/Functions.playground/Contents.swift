import UIKit

func greet(person: String) -> String {
    let greeting = "Hello, " + person + ", I'm sure, you will cope with everything!" // return value could be set like a const
    return greeting
}

print(greet(person: "Sasha"), "\n")

func greetAgain(person: String) -> String {
    return "Hello again, " + person + ", It's so nice to see you this time!" // it can also just be set in the return statement
}
print(greetAgain(person: "Sasha"), "\n")

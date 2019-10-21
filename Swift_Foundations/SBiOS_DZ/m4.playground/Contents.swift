import UIKit

class Render {
    
    init() {
        print("Render is created")
    }
}

class Human { // declared a Class
    var age = 0
    var name = ""
    lazy var render = Render() // this var is created only when the object is created

    static var numberOfHumans = 0
    static let greeting = "Hello, I am Human!" // tnis will be available for all objects of a class
    
    var formattedName: String { // this is the computed property
        return "**\(name)**"
    }
    
    var checkedAge: Int {
        get { return age < 0 ? 0 : age } // CLARIFY THIS
        set {
            if newValue >= 0 { age = newValue}
        }
    }
    
    init(name: String, age: Int) { // initialized the name and age (will be obligatory to set the values for the init parameters (see braces) each time the new object of a class is created.
        self.name = name // self. required to make clear that we are assigning not the parameter of the function, but the property of the class (as obvious - they are of the same name).
        self.age = age
    }
    
    init(nameToBeatify: String, age: Int) {
        name = "***\(nameToBeatify)***" // no .self required as there is no mixture btwn param name and var name
        self.age = age
    }
    
    init?(age: Int) { // failable init ->
        if age < 0 { return nil }
        self.age = age
    }
    
    convenience init(name: String) { // can init some init but ommitting some of the callee parameters (if they are specified in the body of the function)
        self.init(name: name, age: 26)
    }
    
    func birthday () -> String{
        age += 1
        return "Happy \(age) birtdhay, \(name)!"
    }
    
    static greeting() -> String {
        return "Hello, we are humans of number of \(numberOfHumans)"
    }
}

let dima = Human(name: "Dima")
dima.name
dima.formattedName
dima.age
print(dima.name)
dima.birthday()
dima.birthday()
dima.render // look, the render created only at this point
dima.age = -1 // if the age is -1, the computed property below responds
dima.checkedAge
Human.greeting // look how this var is engaged without even instantiating an object

struct Human2 {
    var age = 0
    var name = ""
}

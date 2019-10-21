import UIKit

var str = "Hello, playground"

class HumanClass {
    var name = ""
    
    init(name: String) {
        self.name = name
    }
    
    func changeName(){
        name = "*" + name // in classes we can change the properties from class methods
    }
}


struct HumanStruct {
    var name = ""
    
    init(name: String) {
        self.name = name
    }
    
    mutating func changeName(){
        name = "*" + name // if we want to change the property from a method inside a structure we should use the word 'mutating' for compiler to understand this method amends the value inside some structure's propery + if you instatiate the structure as some constant object - you cant call the mutating functions as they will be unable to aend the properties
    }
}

enum A {
    case a, b
    func test() -> String {
        return self == .a ? "This is a." : "This is b."
    }
}

let dima = HumanClass(name: "Dima") // ref type + we can amend every field of a class-object even if it is declared as a constant. What we can't do is to reassign this constant, for one, to a structure, consider dima = HumanStruct() throwing an error.
let dmitry = HumanStruct(name: "Dmitry")

let dima2 = dima
dima2.name = "Dimka"
dima.name

let dimka = HumanStruct(name: "Dimochka") // value type + we cannot reassign this constant, for one, to another structure + we cannot amend the fields, because the high-level constant property of dimka cascades down to the fields. Simply - we cannot amend properties of a let-instantiated structure.
var mitya = dimka
mitya.name = "Mityay"
mitya.name
dimka.name

// structures have aito-constructors
let dimulya = HumanStruct(name: "Dimulya")



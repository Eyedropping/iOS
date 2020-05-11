import UIKit

var str = "Hello, playground"

@objcMembers class Person: NSObject {
    let firstName: String?
    let lastName: String?
    let age: Int?
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    override var description: String {
        return "\(firstName ?? "oops") \(lastName ?? "oops")"
    }
}

let dima = Person(firstName: "Dima", lastName: "Aksyonov", age: 27)
let denis = Person(firstName: "Denis", lastName: "Peretyagin", age: 68)
let pashok = Person(firstName: "Pasha", lastName: "Ahahaha", age: 88)
let juul = Person(firstName: "Aleksandr", lastName: "Khomenko", age: 50)
let zhenek = Person(firstName: "Evgeny", lastName: "Shvachko", age: 35)
let igoryan = Person(firstName: "Igor", lastName: "Sambursky", age: 36)
let olya = Person(firstName: "Olga", lastName: "Glamazdina", age: 44)
let persons = [dima, denis, pashok, juul, zhenek, igoryan, olya] as NSArray

let denisPredicate = NSPredicate(format: "firstName = 'Denis'")
let juulPredicate = NSPredicate(format: "lastName = %@", "Khomenko")
let agePredicate = NSPredicate(format: "%K = %@", "age", ">30")
let predicates = [denisPredicate, juulPredicate, agePredicate]

let equalPredicate = NSPredicate(format: "%K = %@", "age", "= 88")
let rangePredicate = NSPredicate(format: "age BETWEEN { 50, 80 }")
let compoundPredicate = NSPredicate(format: "name LIKE 'Dima' OR age < 30")
let compoundPredicate2 = NSPredicate(format: "lastName LIKE 'Aleksandr' AND age > 40")
let anotherPredicates = [equalPredicate, rangePredicate, compoundPredicate, compoundPredicate2]

let allPredicates = predicates + anotherPredicates

persons.filtered(using: compoundPredicate)

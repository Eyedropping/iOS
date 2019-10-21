enum ASCIIControlCharacter: Character {
    case tab = "\t" // raw value is set (default value with which the enum comes prepopuated
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

enum Planet: Int {
    case sun = 0, mercury, venus, earth, mars, jupiter, saturn, uranus, neptune // if the RW is an int, each case will ++ the int, look below
}
print(Planet.mercury.rawValue)

enum Planet2: String {
    case sun = "A", mercury, venus, earth, mars, jupiter, saturn, uranus, neptune // if the RW is set to string-type, each case will have it's own name as an RW
}
print(Planet2.mercury.rawValue /* this line prints raw value of case 'mercury' from the 'Planet2' enum */, "\n", Planet2.sun.rawValue)

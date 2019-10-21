// INITIALIZING FROM A RAW VALUE

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let possiblePlanet /* this is optional, and below is the expl why */ = Planet(rawValue /* param 'RW' */: 7) // -> case, associated with this RW
let possiblePlanet2 = Planet(rawValue: 90) // -> nil, bc int 90 isn't in Planets enum. Simply put - there is no 90th lanet, mkay.

let position2find = 11
if let somePlanet = Planet(rawValue: position2find) {
    switch somePlanet {
    case .earth:
        print("Our home.")
    default:
        print("No safe place for humans.")
    }
} else {
    print("There is no planet at position \(position2find).")
}

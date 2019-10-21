enum SomeEnumeration {
    // enum definition goes here
}

// main points of a compass
enum CompassPoint {
    case north
    case south
    case west
    case east
}

// multiple enum cases can come in a single line
enum SolarSystem {
    case sun, mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto, m83
}

var directionToHead = CompassPoint.west // type of this var is inferred

// after (when the type is already known) this var can be assigned to each enum case with a shorter '.' dot-style syntax
directionToHead = .east
directionToHead = .north
directionToHead = .south

// using enums with switch

var planet = SolarSystem.sun

switch planet { // consider the value of the planet var. in case it will match n-value from the enum, print n-line
case .sun:
    print("Our source of light.")
case .mercury:
    print("Dr Jekkyll / Mr. Hyde.")
case .venus:
    print("The planet of storms.")
case .earth:
    print("Our home.")
case .mars:
    print("The red planed.")
case .jupiter:
    print("Galaxy's colossus.")
case .saturn:
    print("Ringed miracle.")
case .uranus:
    print("Stpo that jokes on ur anus please.")
case .neptune:
    print("Get the trident, puny mortals!.")
case .pluto:
    print("Farewell, our little cold friend. You will always be a part of a solar system, bro.")
default:
    print("We left the Solar System")
}

switch planet {
case .pluto:
print("Our source of light.")
default:
    print("Some planet or other celestial.")
}

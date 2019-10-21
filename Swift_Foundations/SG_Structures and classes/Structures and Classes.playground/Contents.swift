// CLASSES AND STRUCTURES

struct SomeStructure {
    // def goes here
}

class SomeClass {
    // def goes here
}

struct Resolution { // defined a struct
    var width = 0
    var height = 0
}

class VideoMode { // defined a class
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution() // created an instance of a struct
let someVideoMode = VideoMode() // created an instance of a class
someVideoMode.resolution.width = 1920
someVideoMode.resolution.height = 1080
Resolution.init(width: 1, height: 1)
print(someResolution)

print("The width of the screen is \(someResolution.width).") // accessing the property of a struct via var (below - the same)
print("The height of the screen is \(someResolution.height).")
print("Therefore the screen resolution will be \(someResolution.width)x\(someResolution.height). \n")

print("The width of the screen is \(someVideoMode.resolution.width).") // accessing the subproperty of a class via var (below - the same)
print("The height of the screen is \(someVideoMode.resolution.height).")
print("Therefore the screen resolution will be \(someVideoMode.resolution.width)x\(someVideoMode.resolution.height).\n")

let vga = Resolution(width: 640, height: 480) // set new var - instance of a 'Resolution' struct with a memberwise initialization: <struct_name>(<property1>:<assigned_value>, <property2>:<assigned_value>)
print("The default VGA res state is: \(vga.width)x\(vga.height). \n")


// Structures and Enumerations Are Value Types

let hd = Resolution(width: 1920, height: 1080)  // here a copy of a Resolution instance is made
var cinema = hd // here the next copy of a Resolution instance is created and assigned to a var - values are transferred (value-type)
print("hd:\(hd.width)x\(hd.height); cinema:\(cinema.width)x\(cinema.height).\n")

cinema.width = 2048

print(cinema.width) // new-new instance property amended
print("\(hd.width)\n") // new instance property stayed the same

// Same logic like above (lines 40-46) applies to Enumerations

enum CompassPoint {
    case north, south, west, east
    mutating func turnNorth() {
        self = .north
    }
}

var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection // this var receives the copy of the currentDirection var
currentDirection.turnNorth() // currDir var changed the value (ref to func within the enum above)
print("The current directions is: \(currentDirection)") // now currDir is 'west'
print("The remembered directions is: \(rememberedDirection)") // this var stayed the same - THIS IS HOW VALUE TYPES WORK MKAY?!


// Classes are reference types

let tenEighty = VideoMode()

tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

print("\(tenEighty.frameRate)\n")


// Identity Operators

if tenEighty === alsoTenEighty {
    print("tenEighty reders to the same instance as alsoTenEighty")
}

import UIKit

let saturnMoonsCount = 62
let countedThings = "moons, orbiting Saturn"
let naturalCount: String

switch saturnMoonsCount {
case 0:
    naturalCount = "none"
case 1...9:
    naturalCount = "a few"
case 10...19:
    naturalCount = "between ten or twenty"
case 20...29:
    naturalCount = "between twenty or thirty"
case 30...39:
    naturalCount = "between thirty or fourty"
case 40...49:
    naturalCount = "between fourty or fifty"
case 50...59:
    naturalCount = "between fifty or sixty"
case 60...69:
    naturalCount = "between sixty or seventy"
case 69...1000:
    naturalCount = "MIRIONU OFU THEMU"
default:
    naturalCount = "cant' be negative number"
}

print("There are \(naturalCount) \(countedThings).")


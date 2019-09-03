import UIKit

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is "
switch integerToDescribe {
case 2, 3, 5, 7, 11, 17, 19:
    description += "a prime number and is also an "
    fallthrough
default:
    description += "integer."
}
print(description)

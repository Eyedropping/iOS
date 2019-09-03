import UIKit

let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the X-axis")
case (0, _):
    print("\(somePoint) is on the Y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the Box")
default:
    print("\(somePoint) is outside the Box")
}

// for better understanding it is good to read the code from bottom to up.

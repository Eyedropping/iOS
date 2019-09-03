import UIKit

let somePoint = (2, 0)
switch somePoint {
case let (x, 0):
    print("The point is on the X-axis with the value of \(x).")
case let (0, y):
    print("The point is on the Y-axis with the value of \(y).")
case let (x, y):
    print("The point is somewhere else @ \(x), \(y).")
}

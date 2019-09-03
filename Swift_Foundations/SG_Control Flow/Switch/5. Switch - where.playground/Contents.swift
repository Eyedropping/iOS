import UIKit

// determining whether the point is on the diagonal axis of the graph (x == y; x == -y)
let somePoint = (1, -1)
switch somePoint {
case let (x, y) where x == y:
    print("The point is on the green diagonal line (x == y) with the coords: \(x), \(y).")
case let (x, y) where x == -y:
    print("The point is on the purple diagonal line (x == -y) with the coords: \(x), \(y).")
case let (x, y):
    print("The point is somewhere else. Coords are: \(x), \(y).")
}

import UIKit

let somePoint = (9, 0)
switch somePoint {
case (let distance, 0), (0, let distance):
    print("The point is on the axis with a distance of \(distance) from the origin.")
default:
    print("The point is no on axis.")
}

import Foundation

class Point: CustomStringConvertible  {
    let x, y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    var description: String { return "(\(x), \(y))" }
}

func +(lhs: Point, rhs: Point) -> Point {
    return Point(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
}

func -(lhs: Point, rhs: Point) -> Point {
    return Point(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
}

let kMaxFireDistance: Double = 10
let kMinFireDistance: Double = 3


class BattleShip {
    
    let center: Point
    
    var friendlyShip: BattleShip?
    
    init(center: Point) {
        self.center = center
    }
    
    func canFireAtPoint(point: Point) -> Bool {
        if let ship = friendlyShip {
            let dx = point.x - center.x
            let dy = point.y - center.y
            
            let distance = sqrt(dx * dx + dy * dy)
            
            if distance > kMinFireDistance { return false }
        }
        
        let dx = point.x - center.x
        let dy = point.y - center.y
        
        let distance = sqrt(dx * dx + dy * dy)
        
        return kMinFireDistance >= distance && distance <= kMaxFireDistance
    }
}

let ship = BattleShip(center: Point(x: 10, y: 10))
ship.canFireAtPoint(point: Point(x: 5, y: 6))

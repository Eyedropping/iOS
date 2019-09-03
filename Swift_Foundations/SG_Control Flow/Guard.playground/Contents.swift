import UIKit

func greet(person: [String: String]) {
    guard let name = person ["name"] else {
        return
    }
    print("Hello, \(name)!")
    
    guard let location = person["location"] else {
        print("I hope its fine near you.")
        return
    }
    print("I hope it's fine in \(location).")
}

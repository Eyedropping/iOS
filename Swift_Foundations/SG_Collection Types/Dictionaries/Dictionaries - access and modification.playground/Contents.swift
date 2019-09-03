import UIKit

var airPorts: [String: String] = ["Sheremetyevo": "SVO", "Domodedovo": "DME", "Vnukovo": "VKO", "Zhukovskiy": "ZIA"]
print("This dictionary has \(airPorts.count) items.", "\n")

airPorts["London"] = "LHR"

if airPorts.isEmpty {
    print("Wow, such empty! I do not know anythong about the airports of Moscow! Would you add some?")
} else {
    for (airp, ticker) in airPorts {
        print("The \(airp) Airport has \'\(ticker)\' ticker.")
    }
}; print("\n")

airPorts.updateValue("BKO", forKey: "Bykovo")
print(airPorts)
airPorts["London"] = nil // removed the item from a dic
print(airPorts)

if let oldValue = airPorts.updateValue("BKO", forKey: "Bykovo") {
    print("The old value was \(oldValue).", "\n")
}

if let airPortName = airPorts["Dublin"] {
    print("The name of the airport is \(airPortName)")
} else {
    print("There is no such airport in the dictionary")
}

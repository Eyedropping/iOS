import UIKit

var dic1: Dictionary<String, Int> = ["Anya": 5, "Dima": 5]

var diffInts = [Int: String]() // created an empty dic with a k-v pait of string and int
diffInts[16] = "sixteen" // added the k-v pair with syntax <dic to be amended>[key] = "value"
print(diffInts)

var airPorts: [String: String] /* [type: type] pair is not oblig due to type inference */ = ["Sheremetyevo": "SVO", "Domodedovo": "DME", "Vnukovo": "VKO", "Zhukovskiy": "ZIA"] // created via literal



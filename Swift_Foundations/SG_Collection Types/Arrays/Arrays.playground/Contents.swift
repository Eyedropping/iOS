import UIKit

var someInts = [Int]()
var someInts2 = [3, 4, 5]
var someInts3: Array <Int> = [3, 4 , 5]

print("someInts of type [Int] has \(someInts.count) items.\n")

someInts.append(3) // appending integer 3 to the end of an array
print("someInts of type [Int] has \(someInts.count) items.\n")

someInts = [] // now making the array empty
print("someInts of type [Int] has \(someInts.count) items.\n")
someInts.append(1)
someInts.append(2)
someInts.append(3)
someInts += [4]

var threeDoubles = Array(repeating: 3.0, count: 5) // this array will repeat eh value of 0.0 5 times.
var anotherDoubles = Array(repeating: 2.13, count: 2)
var mergedArray = threeDoubles + anotherDoubles // arrays can be merged via '+'

var shoppingList: [String] /* expl type spec could be dropped due to type inference */ = ["Eggs", "Milk"]
print("The shoppingList contains \(shoppingList.count) items.\n")

shoppingList.append("Flour") // adds to the end of an array
shoppingList += ["Sugar"] // adds to the end (alt way), addition should be in brackets.

if shoppingList.isEmpty {
    print("The shoppingList is empty.")
} else {
    print("The shoppingList has \(shoppingList.count) items.\n")
}

var firstItem = shoppingList[0] // access the items of an array
shoppingList[0] = "Corn"
print(shoppingList, "\n")
var anotherItem = shoppingList[0]
shoppingList[0...3] = ["Almonds", "Amaretto", "Milk", "Coffee"] // changed the range of values via indices
shoppingList.insert("Amaretto Syrup", at: 1) // inserted the item on the 1st index of an array
shoppingList.count
shoppingList.remove(at: 4) // this removes "Coffee" from the array
print(shoppingList)
shoppingList.count
let groceries = shoppingList.removeLast()
print(groceries)



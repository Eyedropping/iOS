import UIKit

var shoppingList = ["Salt", "Water", "Cabbage", "Tomato", "Eggplant", "Salad", "Celery", "Spinach"]

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("The item of index \"\(index + 1)\" has the value of \"\(value)\"")
}

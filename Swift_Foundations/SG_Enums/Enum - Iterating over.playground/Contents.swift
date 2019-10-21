// ITERATING OVER ENUM CASES
enum Beverage: CaseIterable {
    case coffee, juice, tea
}
let numOfChoices = Beverage.allCases.count
print("There are \(numOfChoices) beverages available \n")

for beverage in Beverage.allCases {
    print(beverage)
}

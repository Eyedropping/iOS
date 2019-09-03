import UIKit

var ints: Set = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var odds: Set = [0, 2, 4, 6, 8, 10]
var evens: Set = [1, 3 ,5 , 7 ,9]
var otherInts: Set = [13, 12, 11]
var negIntsWPosInts: Set<Int> = [-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

odds.isSubset(of: ints)
evens.isSubset(of: ints)
ints.isSuperset(of: odds)
ints.isSuperset(of: evens)
ints.isDisjoint(with: otherInts)
ints.isStrictSuperset(of: odds)
ints.isStrictSuperset(of: negIntsWPosInts)
ints.isSuperset(of: negIntsWPosInts)

let employees: Set = ["Alicia", "Bethany", "Chris", "Diana", "Eric"]
let attendees: Set = ["Alicia", "Bethany", "Diana"]
print(employees.isStrictSuperset(of: attendees))
print(employees.isSuperset(of: attendees))



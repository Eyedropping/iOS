import UIKit

var a: Set = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var b: Set = [0, 2, 4, 6, 8, 10]
var c: Set = [1, 3 ,5 , 7 ,9]

// intersection - shows what values are common btwn the sets
a.intersection(b).sorted()
b.intersection(c).sorted()
a.intersection(c).sorted()

// symmetricDifference - shows what values are in either set, but not both
a.symmetricDifference(b).sorted() // set a has the values 1, 3, 5, 7, 9, that are not present in set b
b.symmetricDifference(c).sorted() // as these sets (b and c) are completely different, one containing odds and the other containing evens, the result will combine all unique values of both sets
a.symmetricDifference(c).sorted() // set c contains odds, so all evens from set a will be displayed

// union - combines two sets
b.union(c).sorted()


// subtracting - creates a set with values not present in a specified set
a.subtracting(b).sorted() // displaying values that are in a, but not in b

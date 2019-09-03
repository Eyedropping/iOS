var someInts = [1, 2, 3]
someInts.append(4)
someInts.remove(at: 0)

var min = 4
var max = 0
var i = someInts[0]

for i in 0..<someInts.count-1 {
    if someInts[i] > max {
        max = someInts[i]
    }
    if someInts[i] < min {
        min = someInts[i]
    }
}
print(min)
print(max)
print("The diff is \(max - min)")

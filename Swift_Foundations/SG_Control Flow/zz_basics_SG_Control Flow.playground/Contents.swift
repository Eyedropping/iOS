import UIKit

// for-in loops

let names = ["Anna", "Alex", "Anya", "Dima"]
for name /* name is a constant tha is declared and will represent each element of an array*/ in names {
    print("Hello, \(name)!")
}
print("\n")


let numberOfLegs = ["Spider": 8, "Ant": 6, "Cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("A \(animalName) has \(legCount) legs.")
}
print("\n")


for index in 1...15 {
    print("The \(index) times 5 is \(index * 5)")
}
print("\n")


let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
print("\n")


// while loops (Snakes and Ladders Game example)
let finalsquare = 25 // setting for array (board) init
var board = [Int] (repeating: 0, count: finalsquare + 1) // initializing board with 0-square where all pplayers start
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02 // setting ladders
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08; // setting snakes

/* setting dice-roll mechanism */
var square = 0
var diceRoll = 0

while square < finalsquare {
    // roll the dice
    diceRoll += 1
    // check if the dice is within 1...6 range
    if diceRoll == 7 { diceRoll = 1 }
    square += diceRoll
    if square < board.count {
        square + board[square]
    }
}
print("Game Over!")


// repeat-while loops


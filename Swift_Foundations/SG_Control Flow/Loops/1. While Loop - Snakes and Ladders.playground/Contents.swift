import UIKit

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

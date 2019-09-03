import UIKit

// setting board
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
var square = 0
var diceRoll = 0

// setting the loop (here the loop runs +1 more times (while = 9 times) -> it's bc repeat-while first executes the block of code and then checks whether the condition is true or false
repeat {
    square += board[square] // move
    diceRoll += 1 // roll the dice
    if diceRoll == 7 { diceRoll = 1} // diceroll overflow check
    square += diceRoll
} while square < finalSquare
print("Game Over!")

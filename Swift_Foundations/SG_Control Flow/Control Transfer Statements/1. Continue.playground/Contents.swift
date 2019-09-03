import UIKit

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charsToRemove: [Character] = ["A", "a", "E", "e", "I", "i", "O", "o", "U", "u", "Y", "y", " "]

for char_z in puzzleInput {
    if charsToRemove.contains(char_z) {
        continue
    }
    puzzleOutput.append(char_z)
}
print(puzzleOutput)

import UIKit

let someChar = "!"
switch someChar {
case "A", "a", "E", "e", "I", "i", "O", "o", "U", "u", "Y", "y":
    print("\"\(someChar)\" is a vowel.")
case "B", "b", "C", "c", "D", "d", "F", "f", "G","g", "H", "h", "J", "j", "K", "k", "L", "l","M", "m", "N", "n", "P", "p", "Q", "q", "R","r", "S", "s", "T", "t", "V", "v", "W", "w", "X", "x", "Z", "z":
    print("\"\(someChar)\" is not a vowel, it's a consonant.")
    
default:
    print("\(someChar) is neither.")
}

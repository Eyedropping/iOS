import UIKit

var tempC = -5
if tempC >= 30 {
    print("Wow! So hot outside, use a sunscreen!")
} else if tempC < 30 && tempC > 20 {
    print("Geez, what a great day! Consider going for a walk with a smoothie!")
} else if tempC <= 20 && tempC >= 10 {
    print("It's a great opportunity to go for a walk in the park or have some mushroom-gathering time!")
} else if tempC < 10 && tempC > 0{
    print("Wow, that's chilly! Dont forget to wear properly!")
} else {
    print("Brrr!.. Stay home and get some cocoa with marshmellows. Yum...")
}

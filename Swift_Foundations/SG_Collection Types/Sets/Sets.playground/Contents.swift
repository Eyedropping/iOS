import UIKit

var letters = Set<Character>()
print("The set has \(letters.count) items.")

var musicGenres: Set<String> = ["Ambient", "Downtempo", "World", "Techno"]
var favGenres: Set = ["Ambient", "Downtempo", "World", "Techno"] // type auto-inference
print("favGenres has \(favGenres.count) items.", "\n")

if favGenres.isEmpty {
    print("Wow, such empty! Your set contains \(favGenres.count) values! Consider adding one!")
} else {
    print("My TOP music preferences are:")
    for (index, value) in favGenres.enumerated(){
        print("TOP \(index + 1): \(value).")
    }
    print("\n")
}

favGenres.insert("Psy")
print(favGenres)
favGenres.remove("Psy") // when removing an item out of a string set, you should use the exact value that is to be removed
print(favGenres, "\n")

if favGenres.contains("Funk") {
    print("Wow! So funky!")
} else {
    print("I do not listen to funk, though my TOP music preferences are:")
    for (index, value) in favGenres.enumerated(){
        print("TOP \(index + 1): \(value).")
    }
    print("\n")
}

for genre in favGenres {
    print(genre)
}
print("\n")

print(favGenres.sorted(), "\n")
for genre in favGenres.sorted() {
    print(genre)
}
print("\n")

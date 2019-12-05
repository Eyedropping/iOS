let animals = ["Cat", "Dog", "Cow", "Rooster", "Pig", "Horse", "Snake", "Fish", "Sheep"]
var currentIndex = 0

for animal in animals {
    currentIndex += 1
    print(animal)
}

// print(\(animals[currentIndex % animals.count]))

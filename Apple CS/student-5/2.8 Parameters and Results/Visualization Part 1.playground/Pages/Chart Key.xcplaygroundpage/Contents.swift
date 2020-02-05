/*:
 ## Chart Key
 
 A chart without labels isn't all that useful. An additional function, `addKeyItem(withLabel: color:)` lets you provide a key for the chart to match each color with the item it represents.
 
 - `withLabel`: The `String` name of the label.
 - `color`: The color of the label. You can use the same list of colors that applies to wedges:
    - .black
    - .blue
    - .brown
    - .cyan
    - .darkGray
    - .gray
    - .green
    - .lightGray
    - .magenta
    - .orange
    - .purple
    - .red
    - .yellow
 
 - callout(Experiment): Edit the code below to see how the key items work.
 
 */
makePieChart()

addWedge(withProportion: 0.3, color: .purple)
addWedge(withProportion: 0.15, color: .yellow)
addWedge(withProportion: 0.2, color: .green)
addWedge(withProportion: 0.35, color: .red)

addKeyItem(withLabel: "Grapes", color: .purple)
addKeyItem(withLabel: "Bananas", color: .yellow)
addKeyItem(withLabel: "Limes", color: .green)
addKeyItem(withLabel: "Strawberries", color: .red)

//: [Previous](@previous)  |  page 3 of 11  |  [Next: Your Own Data](@next)

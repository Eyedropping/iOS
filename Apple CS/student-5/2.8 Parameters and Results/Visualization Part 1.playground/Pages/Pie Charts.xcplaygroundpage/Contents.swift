/*:
 ## Pie Charts
 
 Pie charts represent a set of values that are parts of a whole. For example, a survey might ask whether respondents prefer apples or oranges. If 65% of them choose apples and 35% choose bananas, then a pie chart would divide a circle into colored wedges that occupy 65% and 35% of the whole circle.
 
 To build a pie chart with this API, use the `addWedge(withProportion:color:)` function. The two parameters serve the following roles:
 
 - `withProportion`: The size of the wedge, as a percentage of the whole pie. The number should be a `Double` between 0 and 1.
 - `color`: The color of the wedge. You can use any one of the following values. (Note that you have to use a period before the color name. If you don't, you'll see a "use of unresolved identifier" error.)
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
 
 Below is an example use of the API.
 
 - callout(Experiment): Try modifying the parameters to see how they affect the look of the chart, and also try adding more wedges.
 
 */
makePieChart()

addWedge(withProportion: 0.15, color: .red)
addWedge(withProportion: 0.35, color: .yellow)
addWedge(withProportion: 0.4, color: .blue)
addWedge(withProportion: 0.1, color: .gray)

//: [Previous](@previous)  |  page 2 of 11  |  [Next: Chart Key](@next)

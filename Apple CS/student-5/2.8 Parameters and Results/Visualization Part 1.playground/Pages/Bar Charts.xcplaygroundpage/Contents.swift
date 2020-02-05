/*:
 ## Bar Charts
 
 The bar chart API functions let you build a chart with any number of individually-colored bars.
 
 The function `addBar(withLength:color:)` adds a bar to the chart. (It's very similar to `addWedge(withProportion:color:)`.)
 
  - `withLength`: The size of the bar expressed as a `Double`.
  - `color`: The color of the bar. You can use any one of the following values. (Note that you have to use a period before the color name. If you don't, you'll see a "use of unresolved identifier" error.)
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

 
 The bar chart on this page has a minimum value of 0 and a maximum value of 10.
 
 Below is an example use of the API.
 
 - callout(Experiment): Try modifying the parameters to see how they affect the look of the chart, and also try adding more bars.

 */
makeBarChart()

addBar(withLength: 1, color: .yellow)
addBar(withLength: 5, color: .green)
addBar(withLength: 9, color: .red)
addBar(withLength: 3, color: .purple)

//: [Previous](@previous)  |  page 5 of 11  |  [Next: Bar Chart Customization](@next)

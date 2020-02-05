/*:
 ## Plots
 
 Plots are the third type of data visualization supported by the API.
 
 The `addPointAt(x:y:color:)` function plots a point.
 
   - `x`: The X coordinate of the point.
   - `y`: The Y coordinate of the point.
   - `color`: The color of the point. You can use any one of the following values. (Note that you have to use a period before the color name. If you don't, you'll see a "use of unresolved identifier" error.)
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
 
 The plot on this page has a minimum value of 0 and a maximum value of 10 for both axes. Points outside these ranges won't show up on the plot.

 Below is an example use of the API.
 
 - callout(Experiment): Try modifying the parameters to see how they affect the look of the chart, and also try adding more points.

 */
makePlot()

addPointAt(x: 1, y: 2, color: .black)
addPointAt(x: 3, y: 1, color: .black)
addPointAt(x: 3, y: 4, color: .black)
addPointAt(x: 2, y: 6, color: .black)
addPointAt(x: 4, y: 5, color: .black)
addPointAt(x: 7, y: 5, color: .black)
addPointAt(x: 8, y: 2, color: .black)
addPointAt(x: 10, y: 6, color: .black)
addPointAt(x: 8, y: 9, color: .black)

//: [Previous](@previous)  |  page 8 of 11  |  [Next: Plot Customization](@next)

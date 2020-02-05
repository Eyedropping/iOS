/*:
 ## Bar Chart Customization
 
 These additional API functions let you further customize your bar charts.
 
 You can set the maximum and minimum values of the Y axis using the `setYAxis(minimum:maximum:)` function.
 
  - `minimum`: The bottom value of the axis, specified as a `Double`. Bars shorter than this value won't show up in the chart.
  - `maximum`: The top value of the axis, specified as a `Double`. Bars longer than this value will not display their true length, since they will be go higher than the top of the chart.
 
 To add a label to the X axis, call the `addBarLabel(_:)` function. The sole argument to this function is a `String`. They will be equally spaced across the width of the chart. If you call it as many times as you have bars, the labels will line up underneath the bars.
 
 - callout(Experiment): Edit the code below to change the look of the chart.
 
 */
makeBarChart()

setYAxis(minimum: 0, maximum: 100)

addBar(withLength: 60, color: .yellow)
addBar(withLength: 83, color: .green)
addBar(withLength: 45, color: .red)
addBar(withLength: 17, color: .purple)

addBarLabel("Bananas")
addBarLabel("Limes")
addBarLabel("Strawberries")
addBarLabel("Grapes")

//: [Previous](@previous)  |  page 6 of 11  |  [Next: Your Own Data](@next)

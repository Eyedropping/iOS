/*:
 ## Bar Charts
 
 Bar charts also used simple functions in the first version of the API. This iteration exposes an instance of `BarChartView` named `barChart`. There's also a `ChartBar` struct which is used to specify the bars themselves. `ChartBar` has the following properties:
 
  - `length`: The size of the bar expressed as a `Double`.
  - `color`: The color of the bar expressed as a `UIColor`.

 `BarChartView` has several properties:
 
 - `bars`: An `Array` of `ChartBar`s.
 - `yAxisMinimum`: The minimum value of the Y axis expressed as a `Double`.
 - `yAxisMaximum`: The minimum value of the Y axis expressed as a `Double`.
 - `seriesLabels`: An `Array` of `String`s to display along the X axis with equal spacing.

 As on previous pages, you'll also get an instance of `ChartKeyView` called `keyView`.
 
 - callout(Exercise): Create a bar chart using your own data.
 */
makeBarChart()


/*:
 
 - callout(Challenge): Recreate the `addBar(withLength:color:)` and `setYAxis(minimum:maximum:)` functions from the original API.
 

[Previous](@previous)  |  page 4 of 6  |  [Next: Scatter Plots](@next)
 */

